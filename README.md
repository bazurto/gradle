# Gradle

## Usage

1. Download the latest version of Bazurto CLI from https://github.com/bazurto/bz
2. Create a `.bz` file in your root of your project with the following content:
    ```hcl
    deps = [
        "github.com/bazurto/gradle@8.0.4"
    ]
    ```
3. Run the command bellow to initialize your gradle project and follow the prompt:
    ```groovy
    bz gradle init
    ```

3. Create your example task in `build.gradle`:
    ```groovy
    task mytask {
        doLast {
            println("Hello World")
        }
    }
    ```
4. Now you can execute gradle commands in your project. e.g.:
    ```bash
    bz gradle mytask
    ```

    or 


    ```bash
    bz bash
    gradle mytask
    ```

