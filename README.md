# Flutter Carousel View Widget

This repository contains the implementation of the **Carousel View** widget in Flutter, utilizing the new built-in functionality introduced in the Flutter 3.24 update. Prior to this update, developers had to rely on third-party packages to implement a carousel view in their applications. This widget allows you to easily create a carousel of items, such as images or custom widgets, with smooth transitions and various customization options.

## Features

- **Built-in Flutter 3.24 Widget**: No need for third-party packages.
- **Customizable**: Adjust the appearance, transition effects, and behavior of the carousel.
- **Efficient**: Optimized for performance, utilizing the latest Flutter updates.

https://github.com/user-attachments/assets/e93fa2a1-e26f-4453-ad1c-119977648033

## Getting Started

To use the `Carousel View` widget in your Flutter project, follow these steps:

1. **Add to your project**: Since this widget is part of Flutter 3.24, ensure your Flutter SDK is updated to the latest version.
so just upgrade by running the below command

          flutter upgrade
2. **Code**
   ```Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: CarouselView(
                    itemExtent: 180,
                    children: List.generate(10, (int index) {
                      return Container(
                        color: Colors.amber,
                        child: Image.network(
                          'https://picsum.photos/250?random=$index',
                          fit: BoxFit.cover,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
