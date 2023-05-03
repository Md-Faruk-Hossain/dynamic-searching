using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Exam.Migrations
{
    public partial class createdclassmanager : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "ManagerId",
                table: "Employee",
                type: "int",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Manager",
                columns: table => new
                {
                    ManagerId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ManagerName = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Manager", x => x.ManagerId);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Employee_ManagerId",
                table: "Employee",
                column: "ManagerId");

            migrationBuilder.AddForeignKey(
                name: "FK_Employee_Manager_ManagerId",
                table: "Employee",
                column: "ManagerId",
                principalTable: "Manager",
                principalColumn: "ManagerId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Employee_Manager_ManagerId",
                table: "Employee");

            migrationBuilder.DropTable(
                name: "Manager");

            migrationBuilder.DropIndex(
                name: "IX_Employee_ManagerId",
                table: "Employee");

            migrationBuilder.DropColumn(
                name: "ManagerId",
                table: "Employee");
        }
    }
}
