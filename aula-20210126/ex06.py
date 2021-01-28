
if __name__ == '__main__':
    dicio = {
        "backend": "Python",
        "frontend": "VueJS",
        "database": "PostgreSQL",
        "cache": "Redis",
        "mobile": "Flutter"
    }

    for key, value in dicio.items():
        print(f"* {key}: {value}")
