import 'package:flutter/material.dart';
import 'package:interview_task/model/cont_values.dart';

class NearYou extends StatelessWidget {
  const NearYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(
        width: 15,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: nearYou.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(nearYou[index]["image"], fit: BoxFit.cover),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      nearYou[index]["name"],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 14,
                          color: Color(0xFFA1A1A1),
                        ),
                        Text(
                          nearYou[index]["distance"].toString(),
                          style: const TextStyle(color: Color(0xFFA1A1A1)),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 48,
                  height: 25,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2B2B2B),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                    child: Text(
                      nearYou[index]["price"].toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color(0xFFFBFBFB),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            )
          ],
        );
      },
    );
  }
}
