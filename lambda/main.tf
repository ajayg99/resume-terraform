data "archive_file" "lambda_zip" {
  type = "zip"

  source_dir  = "./python"
  output_path = "./lambda_function.zip"
}

resource "aws_lambda_function" "resume-lambda" {
    depends_on = [ data.archive_file.lambda_zip ]
    function_name = var.function_name
    role = var.role
    filename = var.filename
    handler  = var.handler
    runtime  = var.runtime

}
