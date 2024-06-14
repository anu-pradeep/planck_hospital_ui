import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital_ui/custom_Appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppbarCustom(),
        backgroundColor: Colors.white,
        body: CustomScrollView(slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 08, right: 15),
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        const Image(
                          image: NetworkImage(
                              "https://cdni.iconscout.com/illustration/premium/thumb/patients-consult-with-doctors-through-online-5071232-4257140.png?f=webp"),
                          height: 150,
                          width: 250,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, right: 60, left: 05),
                          child: Text(
                            "Take Care of your health during pandemic",
                            style: GoogleFonts.aBeeZee(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red[400],
                                    shape: const RoundedRectangleBorder(),
                                    fixedSize: const Size(190, 50)),
                                child: Text(
                                  "Join event",
                                  style:
                                      GoogleFonts.aBeeZee(color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                width: 60,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: const RoundedRectangleBorder(),
                                    fixedSize: const Size(190, 50)),
                                child: Text(
                                  "View details",
                                  style:
                                      GoogleFonts.aBeeZee(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 330),
                  child: Text(
                    "Nearby Clinic",
                    style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Card(
                        color: Colors.white,
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Image(
                                image: NetworkImage(
                                    "data:image/png;base64,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"),
                                height: 30,
                                width: 50,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Neurology",
                                style: GoogleFonts.aBeeZee(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Card(
                        color: Colors.white,
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Image(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvZbg2VZxFmNqtPIgeT1TboXe2jXH8tzTMrQ&s"),
                                height: 30,
                                width: 50,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Dermatology",
                                style: GoogleFonts.aBeeZee(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Card(
                        color: Colors.white,
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Image(
                                image: NetworkImage(
                                    "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAkFBMVEX///8aGRkAAAAYFxcVFBQSERH8/PwODQ0IBgb5+fnz8/P29vYMCgrw8PDj4+Po6Ojc3NzOzs7FxcUrKiq3t7fHx8fV1dWpqamvr6++vr6ampolJCSSkpLMzMxpaWl2dnZDQkKFhYU2NTWZmZlZWVlRUFA5ODh9fX1vb2+Li4tCQUFdXV0mJSUuLS1KSUmioqIgi3CKAAAgAElEQVR4nO1d6XrqOq8GJSEBEsYwFcpUZgrc/90dS/KcQFsWXWt/z3P0Y+/VFhLLlqVXg+VK5f/paao128PBZDLpZrV7H6k3G41ms/43R/Uiyrqj/XkNij4PvZIPTRbXKv41nV7nq3G3/ddH+Qy1x7PZcbEktuKwqihMoD/wPvoBkEQB/jUIo5S+sVvMbqNbL/snQ/8WDc800CSqGhLDJzYi+LA/2tpBUPVJTATRfPivOHhMzQOkzJTmDke8uwYQ408wMp/NAvoocxR7vIqvHZr/jo+7NAEQo4t5FXlJYN8lHdPZALFoluYS07IeJsP3yexM35TcBcQuQP7PGLlHR5S6ALbjTrPenuOQw8+W/usbcX9VP97wx7TfkT9mR2ZRTE8aBoD7N4DF3+bgMdW3xBOM5c8z8aOz8YgHUCz3BRPRpeH/+dxrtbPG5JNX/PRf0jitAOUySo0YrqCaOKtwEuoHbvzvocMu0hjEqqnpqexJC8XQ/d1R/4B6gNozrtoWbQ6Bw8NIcKV4xn+nc/sJuyiwd15OkmpE4l/TjcYDa1eqTmm6tX7sWVyRDN+sP4pt6qqWDqnfAFa/NOSf0YK3zdXDXlkY2qO2OTx6HGaCwTfv2yf51H9vNhpbHspG/mwgaBfCyHwO1WeyN/+2l2chjLz+QT6gdqbnJlrh/itqVcn2WSM06OxmW7VzbGz+RAw+0qZDLGGy1D8M9RSxvon+sWUcSeN1NL+aGP1y0CtbqU/FB0GuR4N0qd62Yhdqw1G3gM9YWca7rsmvU5uxSuDovKGZ8/oU1DZqAX5O/eGKpkO7G1sw696yFVA3IfAOlzLP5G/Qm8ShMLF/O7akagZqcXLBYXxWv1/hRtS65bIz32jt7We1woDh3/xfWP/OVHkHrmWeWlZxAErBkoGYqd+7/K4tGa+BLZKZ8EsChuj22v4dupGVF9Prmbbb2v5BKKA2relBKCSjMzriWyGtXCa25vFgfWVhL6IAP0HEMB7mf9luLGgBA5h2NnF6Nr/vOCJbReGaIBRYh7ZvUcNdiX/M8asNe93a9gNuEExbZ5C78W8GAWqsYmKUuxmEff2HemLjmCPrzpUYNGlPM0ScH/HjgqW4ZSPYvQX25mkstPGkD+xD/0XH+CwBB45F7Ckzpg1YBrql1APAjRbNOBOkTN+vSm4zayc3wqlGR2lAIKF+lDj1r1n/OTPICkLYAa3tZ7Av+/yIXNzwYn5zSGnEp7JPj0FJvRBmCRJ6hFOj8C8J6gfQFpT7pSmGIe1hF6DUOJO5r0YWP+zyumZG01apLmvysgsqnPhS+oVXU9dhsFIX/5Yj6t/T6Wj/bJzGkxRWy8HKEOSOFSpX773mDpe9XEZeTWs0E0bz10OFaXJIbcM8WSzULHQoiGEpIQpjGPCdjxyTepIhjDZYtjabRm6s59eIB2ciFC090WcLf1dqW5gedkupNNBYxJZRGYGFFHrQB1hakzMGie/AtrUtVMBR6dZ9LeF74qX5eQVS+QkUakVmzoS6e5LnvdhF8cb8dUwc8r8Hm3alvoCTEdkOyDk7JNHO/1L53n0hTeg1Rm0PQC1oM7F8voncS0MeEME0S0pHlv/EEvlp+SdiI7KCwY1o7bxd5M7T79BcbPhEw6zaGwQgR15bx59qHZpTpfIHcsyupiEfmFnq8XeERdFWdaXWED8HW/37d5rdX0ZvNQwEyhmud46fOALF1iJR69A+pco54j+2NBBlejPRRgkDMog+pWSIDaf9LAF/YzjnMnt1wZe//wJbFtURnMTCZIz25ypABFaApSPRTe0D4vTqfA19XgurFCI1FVy4CI70iWtsiXu3Lx4GsD6vxkPazr/sZdS3AluEpxnnliJIVlZYtzJPEIQLeQvi1HPoPFyKsu7rjKtYOvioC9UaxPZT8xNAGGK6YDdHZPO7McYrKJcJQ/DLUcP5q9htMDkJZZv0W94X1658VUNHXRHVTxgWrr6f48Sz68P9FBCZhnHVARu/QCuOWlDqZDvyuaBoPbqNsG34fyH50sakibLuLzPHJUOBQMHPNVZq3VmVoClHbn7N42e8FvcDsRkKPCCdOY1WAq3GjrlApWhbOvMpdgVLH94ROySkMGr6axbjGuMEds/xvVg0rXGpKmhZJp5hqS+KRN0UM1hBeWIfNVnnYKOhVxMtoXBnNrGJuBDVlbwevVCv9RGKJqqRL5J7CgND44FWuu5ORXzYInP1W2Z/EzMuPCRuWsnEx8TIjSlzCfGIVqakSsvtGj1CcZg7syBmWJj7HvwaAG/To3tkuYy1a/bmJ40ytpGXU6voKP02ssaFc3XHYUdBMejmoz9qabwqACNOH/o2v5M/xc0TYiTtJrC2+F97OJkdrmDpleY0KFi5utSLxJTicGsWtOkzKoyNFch/B6ie928TrEUZiT9VGONW70jKnxFBJgwqCL0YHpeyVGZu2QyBwsOqqyXqCtO5HMZGZPee6hfayskt3vryTddrFH6KX9RoS/+C2R+AskToGKDZCyHZOzbxnPpC2pqq5djGvpTKr2bensIYKTjxmHxJpQ9RJDf50YPxryLUDjy5RxlKnN7c6c/A1+MTo1gpuqYk8myzO/HMi9BJnq6uDBcgLSVKROd3dE2bQpy0qXAXRXAu2CQxB64ZX5ncU2UX3tWlb3C2PSISER+11EZrawBxtajR/pjedPIIdWq6LE4hwha7KgjrM/SmZK9LYZWFE+OvHOBi6ZtGEjjesiJUNMzXmBycV0M3mkESnpnQJ1ExSjYRn7CNYbYGyyBkmEXSf115k3EBW7oJN9i5DEkj3KENPZhj8RN/Qh+0hChlqMpKNgFVDFnrkk1TO3vr5g8tF58/LBwxK0eIacOyNMVcRaZmnjP2AurQ+ElE0O7OCh+gMLgda9ulDnzrOFh74pebvENoreKAvLO4sNGbl5AMMmXdrBKrV9Au1pO2jUsiesygVY6xcMoUfJ4QuERL++8rwaJRNyMoT1MMVBCcIsqvlFMqKOGVa4Ozg5g4hmrFQxFCotgNlTr4cDKkGQU1FEdN/EcQ2luPSoZClSOo612/DmUqb0fh4YIf+SxxyPqkhqomuzPvf57RD24bGZa0iVkkm/vtbYgfP7jehCn7yiYL2lpjcJDqexKwo1mf7NfxdSZ51G8nbywyab0/JDRfqobrGmlh61QaN4Gmtj1UjcorfV/MF2+TSOcyBviJY8vNkFaWaP+7zXyxg5B/K7YWrDqj4yqvye+RL3oMxdc7lZqUhUwXT91eGR5mDMEL0AD3sdkWYsJUytY1JlPBU2BJEIWtQqwWNhYMDUJAgFOH6gTowZ837/JBK2JRPN1BoKdImXry5Zav4XBm6UHcYK6W3nPtkpFRrsS0VGOL41e2giL/QEzDxjxrE1ftrcrOWjWquoZppj23YoHj80TOq5xJYdenXtB5Zi0xUX0de+B/76aa5DZyK1CpPNM2MFgtHCae0RtBuFYeZ1wtlMM9RxxikYagB1Rh4BDF0RzRFR9yBKhOj7CdeuTHidTgVnCKAGivJv4a3Yz37Qa3/oR6trPShiKgIajsVJ/lnpfRKmCQo2/zxTKHU2fuhHIKqn6S4hzrpAllCj5fURHmmDKB2QqGNndsHRGqDUuA6mHoiSCtoW1fUDm5Xi0y0PcYqNt1mi/biAST9cuXUSHWRIjMxTnIoT0R5JkkZon8HB0NF5zytU6Zn5uDNZRdVL0X7fkZkTOnXl4XiNCftyZGwR2PLksDV43UPFx+SPyQIPiR5I+yyKRTPk5+9CsyURRyUJtqDCWSQZ+wGSLfwXn3zPUmiGEHWQvNGIT2riOM4BclHu0QB+GkV5Qtni0O38XQKBzkUE573voFuoquh4pY2yxaVtxjN3BniTBN5Ae/UbtEKu1DwvUKaGoyYY0ZzX1h2ppx4Lzr5itKn8O2lzCtKAfSME255mLgH32ACGY0e45w/QkdWdO0J4sUTN4lH1tLgBbRSn1Pi6nalbPPynJPW0fUGxQTsOzSkMN6NYxoCTB3vr23KTDyCl16Y2cNIKFyxFRBCsvID50U76iYWWKIZTQN5Q/dQAWJZax2Yo+eqP9Ym6u3TTjBF0usm77C0adEgSatwAdgySVJr1LcpMUdH7KBqxpEJmlWQHr+146uZpqrChu283o04bryAmpLDvF0YGj2VwPCUH/Gdv/YFXHACKfELD2S8TkwZwFutuNPMqs3/DvociMh4OFOLCCfcfR2+5Mki62hfxgLe29MlO1H3SxYg4bMLqqVoM05QcPOReKML7MxCukuvcfmqVY6tQseVBkcZb59/YKYYqNK08Uu/BEMPLOreXJLkZxTH6aOCNG4id19MeZJ6zZRD7f8ybqQH23nTxFvhyvlm+PLnwPTa8LlATTACegQvICIplIN96pSptWCiqNN5fs5VU9ZugCYEqVK0hv2q7Ypq7Qubx5wpOUZ4uKEasrDzxKtHoToGd8FNZya5jjwY5kcbHUtVyfxkSn7KEfDoXbTBIem/PYsearJ07h/Wl/DMxXoN2+1tuvaE2sPjlxZB2qQrQgcXDcmVRM5knu0YA3Y04TmU8P9s9oBwjJGVRNAepa4mLSvhzfS0pbb+9CucVoVgqGqLtwI6geV+rtQu2YDJkpV6VUXGFUj+6361zWKKF6S/JGccr51vImULmtqXTqzy1t31oB8647fkmftFCaQQYyToyUoOqXAt7t1Z8bvrn0e1D9CGM+8kNDPCZdQ7LZFogVyr8Dl3qqvyxz3b5Ni2boz+jodX9AGjge2dHB12+R+Kjy1BhcNTcF30zoeJp538Upzf0qq7gFPidbUg3Vw1vinueOtcszCC4wv7KKoMli9cJBfltg+Z82s4UBptwHVCeYFV/pnhOgdzfLQCkiPcvUGg7Xtw4UVXqLQi0fjUDRTpIxcBcFLaKAuOQ5aTYLWNAvF9QxIv179EN2PiN86pHof61gWz3MN9IPbfqCJTKJ7MnJiWcwaebdukGnmRc7Gjr4CFVJv6XlZMwog33T6rNlHG8CGaJ4UMe5cc3gDLyaRFyM3A8tnrH8WOXSwewV3g/2LsHCSdChzP5Vyl/WbtNRoX+WS3HcoDmlJnBTCNa56Vr9rc4jBXpdD3PFuGdDeAhGVoOp7+4dErtwK7tTIfYNqFhS+hMXg6/ZgBu8F4N69mAT/RnNYLXBIzokzJR0yHhISFDAfatKjeXv6E74MDSxZy0siwUPJM6lJL4gqltUNBTpSOvU5xBBe6qXul1YyAfwlPIKqfuOIwnO4ZmVHendRcREVwiq4etJHtD0Hm8NaYR/iQvg73T7x7edkhQ7UipbiSIWk7bdoY3uhXShm62p6dH45JPUyccCp3XGgdvE5dM7QSOKCzfKzB2IXakhh96P4GfFu0dj4nIafZlGGt8NK/vThxMSZrpEfpaBEvmMtbNS9T9zUGv8S3FlqjfOhZso83D/L8X2ikN9aWxoheJFcxew2NX4iS4nr3lKthGuIc3umT5GnVyh56Oc7u7666i0h/GhXmnOwAQUF7p46Z+KXhCyxcm7RqHTPCYSW7dhGhbEN2eeKcre8QrPslPFVZNbeOWSqhu6J3xwADmsvA7B8Nn/hjKnCKrMKYS6WI7bCuShyfkBozG4zxjXHUpYdfeDULQyPqiuWN8ySJwvIG6Sh5/eWHd74Fh29/UWShIHTxWgTuRz6G33GYaJADAdgeROqvOlEeDUIqnVXqYqbFYcppMPhsDbYJ/Kjtmnxa8i+TWc3LTBRYVMx6urU0ntCqySeKcPJCdPPiMK24r+7j72DCtiYdN/3nwBBwAWyJf6I9+T8ExSDztz7wvZtutqV2VQZaAeGzSIKIfGNheAnSoa1rNUeVHHoEZdrmFHQwWAALGBL4TbpDduYEvGQC9Yzmu9k8ly+ZlFjjB48GTjdWVgh4zhEFbvjccO5tK+YF9YiiF3McYRIW5aFGph91CXXAgHbTP0q8IJKqMy14OagO7wlEVfTruUIuvBkQt8yy2Ns3YAy17/OV3sOSUSwb+oXeHkY+zBhpTcFX65Ym9JDDFNj8PYh5SrZprQ2sofDYjS+LbZTCnqLEXA7uKIn8y1qTlVFaP0M2NdwO1OtZw6yJLnKLg1Wtrob8eZwU6e6vsBJO2YcqbErZ8Vj3XkSsyA3g+yiEquNWm9Njhja5xLNdgnk+w5lVclhJtTB9sOB3XlAUxrCqVuRxyUdRb/y3segzJZBPtPrqoeGuw9JNnAOJ1X5tquDr2sY2sf3ZtqN/SGHqqr3cs4LJ62ae5CiemhXGpFftrz3o7RoAO0TluURpIUD29YRIZfORrYampYYhPZtV6dqnULVxjeIkJfgcFjumLRk+TwmMgoFNTPfW+asixHd3M7CaBrbPIxYz+xJQGOBEstxWa1Nfmz4+fM2r1lsV2aXUOPjgkwKc/Z2wv9ZctouIIw9OBlPjK8mBQU/ttwtSrpuZygqQsVtHx0gqYEnIN8kt/a8nLor7DPLmzLqW+MrzHfLcY865TFA6wHZlEUT4cBp9ti/rT0ppY3q1xwKauUfqQRSDxNddEZCweWSwL9LtT5bk2p4632Zx248qWma5IB+Y2bmqcKK69Kzn0wI+hQwYB//geA11uqZ33Ftn7UWbPG14NQaw8l4PJ4Ucq5zkM1mhSNwuS9O7E+zBuLQ1f3paK8TXRpROHhRH9z2i/1s3NMdpltQqIz4HhnUVuve5rqx89Wt0ZkJXxHC/aj7HiZC5d0/jYQGQ65IoTDRpU4cV9N40LstsHLADdlVbgituDvv9Dwb4IQ/7eQr5N1dVCVz1LvZPSLbErjijVeuuYVHDTknoAun1g+FdCKkAa68wi3U17ZgnKnBCTsju+15gUgEg1xPZWfOpmKv3mx0Bvlof438CPPGXlJs5+S7MVqW6lp/tpxAXN3b6m8QhLYHP7hajguV6sAOu3+bPudOgOQnVOZYZqPEKf+tu8H2d4Gv4Gorv7pZqq3KteSuZnAWE2MwPgKfGFMndEO49nfCm5Nr/AHZmWtDKBIP4q8rSIUY62XJtmaF3tTu27sPblsLloudAPO7xrtTQMBI+7snw7+gvFQf1Epih84gzkIPyLOXtdxORejg/8VLc2wUoh5cIYbTg4pRmvTCb89x9bncTKfcLKMv/jBk0J1jy5PtfnXoO/LGICmT6RBLlIVjeH4Tu/wi+Ns97Fa6h5LT8Bx9faa+7U4cUljrrxxqzDvGCaShO7VXLtIY+gb6HajReRJ+WfGLfSOm/i8blJp56n6FXUkDEormfgmRRipI4cwFqa5bUfp1AO3Lw2hCvoum/fmYt38aS9ImrhaPXHjUrMq+oyF4aV0BTWee6hP2n8OJgX98xCeEylFBfp7PW5SV+gqaxw+VKRPlLZLLStjrnUZnXbbMB/cAinAAYUsh0/Ar5IUAtMjhxj+h830agnuEAOl9+52+cJRciq+1Su0GOiRGbnB0cnsP1IQjfe5U2ugwfomeyelKq2+1wi+frcag7zqRhYO8yOFxf+bJNNZvbe9AtTpuYoH7tE5pGbmwvU/ZL5qqy+LT45njoHQIa1uE3FjzD4nPHZqf232pQTw07JIM3WrBmQsISSPntCH6tkpF7yGpytF+cOR48SiHdJOvt49Fk+15+nA+n2zR65X1tSdo786Guyl7HHq3dMkB5JAoSYQxPI6qNE8Q9bVy4SJICNw0adtWPlrpBibbMC7kYn9CpBJNxH6ZxOqwpC0Vri6ayciYjRO3wPcCcEuTNOCasMYuCW1DvZIy6CJM22eo0qupz5i204h2/bTc94kqCrTiHGGurJN1pu6B15ajHw4yyOhs1No6ogZdxCGeGAp3tUqjnwauxrrJQLMjclZzCqrOQGY6H2v1IVkD+GyTjA+w5K1WPTCr88Sp4z7aA2IGYe2ptg5mmDoMarKA1/CaFIpfuxz/d9z6mRGRuXVYKpfe1xvZmWc7YtL8BKrpfaZ298QNV39aQITyhiEcCtEdYZWjaSZAUpA2+niuEFVgWvBam1JJWY+8aXncO1qhwfJ9hW1ZCcD3qLam4ynttW/f+Sy8NNodp2clZTPKYP4yrqbbKVVl0kpScX8JMsojeoZ5xE1iVb6oJ/LwYhuu+OjqczWmK2kOOz5geJcqgVrB3yx//BrjApZiYGw7QReZbDg251Qe2tSYi2W06hBmJC3ZnNOXvtKcCFVFHS2i/s+ht2kzsPKrxt6kSsD3bQzyFKAqTu75aQuZYtvLBj4lR+D0qFNLdawgwDZupXpW8H+sqOKdn8vpNlVuXLOwX2Q2KIBVzaoUFpbwdNdgy5M3Yh9N9L/uUP1q1bLsQmh9qNxMYfq4MSUP9af1Ji0rIVYUp/oslQnA0MDwHqwfiMqCgUDGIanHZ5Sv9mHf8MKvij9KmuLIsQb3hP4B2XW+qomq/fdsz/6A9ejmw3AQI09U9txb4BHwy7WUYlgoZDznvL7JqlTyvHrGRbxalYFMmTemzpV3v4l0vD/yYDsaXnW9VFuRxvpVB3kzgo/Jx47FbTvxye9Rs/id7tL/0Eh6Gjr28DDLsVZ3WhULF33Swi5bRxSFY+PiNO7T/+jtBfIb/1bQSBScsBYt4zeb/bwpUXKO4T0mbozjQyTk3PvczwOK78VIeRdKUg0jTNH6e6ozWh1WYz8kobtPXAsnMOlL449CJo3aOZTZgYWn3mcl0esvyC541SMsAw4tPJljD6J9vMjcycEb70W2kS7LcE92nBo5fVhfwvZhUAhxVypFEPIEh7SG3ppBeU8fvNsBznILZqo7Hvk57jjIPZxxcCRyNeNZ1rYFkZgYc6IiiOFYtrdP/i5+orStrGfDJi5vqtlcYJib9sqY3d+Q1iMI3PAgwjUh+bdCUroFMl9Ic5OwXqlvhBe4KQ15rQphR/cam29RZplDRXlpHzMa4iGO4NCR0CyCy7E3nOxj7/NHfiZqBcfdaUVRCOvjeHyo8lIKiWh8VJN4Ww6nb+YGLDVPFNj/maNfj4PCrNSDYvJMkZCoBHbsbu1kqDA7QmyLDrd2amwjN1Lc6Mcw5a/Ucy41hVME4T0TfgR2PeqT/Xa926zydukxoy9pR47aebY4rEZKWVOh2aY0YkBgk8GHtfnaV7Dcbw6p9DBw4NQe233dK3lKF7QE1TuTKbYsf3zMTdMxsPJ5LBxv+AZx4+oYEtSKS7mYCHGTaVk5rjyVW429VP4MPp1MJnuGdnBsBn1HW2ZXFdArw4DYZ4skH5sdhZyYDilvWzxW8wURUI5VehvWxFbGjeI2RQUu0VVYiPdPjHais34xd47XqqKjEtqaaksO6WEwx6MO1hDybAuEBP23Sf6xv35W+8ETuJQKleetznDYHdyuEHGf9SGZghiuE2fCWhs178XYcytUaOpd5WtsA3opHlmqJ1ysm7qLW59cBX87lhE8/mGkmDIiJd0yH9LAyYHlECV0zWiXtV0E08VEsFyr1ZvD0VZeMVd+0U1D7bmhxaGSwFuZKKr6WiEtY64DqLfyw1RsO1lRijJjN2anWvafusBe86pWFMcBTl/7U7roCV7XvF5jMWusB16aPqjJrdmxOJQeV608JNBX9c5im3xeN9tdgsYyhk/18QycOrri4bnvkBcRyj6jiBk+qhWrhlEY2rXXXySPSji8QyuwHhrFURiEKcDG8HADG3y0n0vOUOmEtfKtNIhYj4j97pS1y04qX5aTf59DKaaEc7g66DLPLR1Wv0Q2bqN+pz9PziACcVK4YnOnSznWFRmjAO/uAzgPWnkfdekXBx07JfuwnLhhDExHw7fFYjW7DTxjvnIh79v33TGbihOD19po2ejONn2A6LqQBcTXr/szD8t0aSn13KCzTxPwIv/PKBoh3EngI6F54jjStaapSyIg+8WVBVYrny9Wm1ql3J2ud4jdXgXPHgWmPgmOgmpjV/l7Hz/CVxUMueHwix07e/SiCXjVc9Tv4Jlyk2OhAgDrQsscfSI0L9aSt4cdH8CODIfFbHy9bcFKbNl3T/nf3KsFKvLk+PIuH/fpveDHcXpse2e2BL7XnkTzbb8FmLveDwW7I0JthROxZ6huj+rBWRzcFQd5DZ8NDsk5fCY1U1f9BiS1Vxcy7Sm8lWLco9XOBeelyUUIhjhOSsjb7kcrlNoaAPsYqEXv3XVElaUUvr9ecmpU81x3QQcL1fayvpTKOw8l5pXUg7Pk78KUmMQ81T6LKVvz//SnWmK1XZdMoP479puVVUg2Uu1FOiX9XFcFOkwtYUptDdPrZhkA3tdjCpBtosJBd/e0xIJX9UlK9o8596QNYn0m4LSnNiG4d5kOfldg4n2vNbylMsLnNrv7GYGZ7Pmhi+9s9Dbgn5tXVHKotZLthOLbcXhhL8P6lCpS+yz/FAjTM3xiKu7ZHaHfk+W7nF++qpbL4p9sgUlbmF5fM9tG4InycDVm/YOk0DQWD0ivb63GgHHKhzT8KGSNfA2hfybPa+Hp0jKK/LKi3p/U07yD262RqFl6bwHSqZDqQMLS6BADjgxmOngHLimszTakI3Z+AImuJriDZ7ZxwbJv4ic1KVGxP2AFUeCdlDLGsgtTrPLTDNWpdlKmSGM6WFW4oY2jQXdyPEtZVGCo/ay5Ny8rnre5pNYhI+uPXPJWnM66UMNREGg8qvFpCCWfblDP4XLN8Q6FuhLcSX/QW7BeDUsWsQcG2NhXzWw52Fl2iG62jk2aiu4rwRMO1X1x7utXSvPbY56pd0yiwgZpWdrwKaL4dLHldAJrwk3Zwd7iO/aG4Vz2wozPUZFMsuuZd0ssQj7lFn/2weJRSjaocxB62UeC6Fb82R1leKi4gPKb1RAb+h9OYOvBoQqZxnAalwRVQUOZ/Z0GwO1blS/gdsW0kUBynk8hKYLVYk/pH9PYC2YwkZcQp5GdYMGawyjZybh+fChYKNAFaOWZosEZ5AXjWAJpz90RL8Usu1COmoQWzzH+jLAeJ/Tv5aGYv7fndjsUYmkAAAl5SURBVGkVqyxn3CIBY/xepsRw+OFxgHS7AFkRgVgGtblzuYIw6pyZKpiibfpHipSJ6nHiiyd1J6vjJ5MYFFd7NT52gGX6OFaHR9CV3G4PdKRRwrdwAlzp92OI7WBaSxbweELKd78813zHIo7C71wWT6QNnYu2rYso2uN5H2OMIVwtpRNpTeNd91QZXLBiCg+j6cRx6wrRxWibd07YuFJBDP5Z10QmimenU3s7c2bq6twzfXJNd2e0ATwhZDTGSTdZcXNhjTne+QvXW8fRrULcLdPAkRs7fsX5jei5gxYu1XYJ7f+9WUY64mCXB23LkFwtx3YyoQJAB92b9mR33JigJ3QuUb4Dx7zbXaMq1FqcPOmX9NWvZBcKAUO66DVw2WrZxjuRMLwXNsrGW5070+cs+IYydTmgWP1bOZQfgq07+TbarNmsN9v5ImZH8VUXkja4gh3PwvaX19MUYg/O7x+EoDp7Kam6yYp9Dn5b6kxLym0vhvsyCDc8Vq3FHx5Z/SHV5irIHUZRJKGLte2vD6eyeSAc/a5CzNySm7+4eFjItLSU51QVQOhwO5xeeS/ZCKxUAu5wJ7q1tD9a4v9jIpo75wcVi9XKuJh6d68TMLM4wfvs7BEkr75arr3Q3Y5QNQiUbS2iuwtnxalFZKtbGIyVuFaKAtp14FNuPrCOwiveDMpZISGp85foGIeyD9kr9+1j1BJCY7X+HzqasDE998oCORepYPyjXZpqvaU7V4bdI12b15m8U5Qn3H780sXVdHSQtQqGGoyq84zSHKarboFJZRD9Flvq4aupD+X0Y7v65o5eSSnTC2lokhOdB544bVvorzxNp46/+5AGqTXDsq97CquR6r5m5efXXkZ2i8SDc1u6T9kZUKsfbSa3smG0dzxPsPd2ERtMZ7AL1Pg0NyT/Mod2LRgnXu/rs3yKkgU7Y84VlNk7a1jPt+g1wfpuQLCFiENhChKjF2DRO0TdfFSQRl56eHfL14/A/bPOrDA0lLHbmw/3EeKHBN7uBq1zvntYvnVcEpV9JX3aZ54I26dQYhwkZXxcMYXqrWZdID/StSGTJeXLY2zHWE619y1fhaFfWrh54bW00qZMUH3J5fewm89GeW/YajT9FhDDrXTbpzcuDUYRH8oYbm/NxfCOj8V8CeyJbSpWm09ZaK2cQL5/5jU35pXSuxNgru9kRUGqGp9El9P5MLMMdWXQlzzusHCJzGCTAjEzPvwbgF1F1h6MVofNqa+KsWKCalZY3LSn/i0iq22stW6oJykIo5gSQwej+MdTbkZm7l3hLpocJoiMCezu6aspVpfYD4XUu9Dmj736R4SiZl8t0rs4YJGXlJjcmOY9ugJHKkFdlBHDSm9A4dVTeUeB7JMWdH9b+Ox5ym8R34Jnubt0nBAc6m8Wx9nsbCXiqRiclrhtcwgnI85tuMzn14t+SMKFNG69Wvs3LnP2iW2Epcx2YbgejI6r/er4Me51Ozp83Br6X1Nh0CWXiTkY7aZT3MP3yWi23y+wVdIYHASLsbUw/OkBp58Sn0o0grON7iUUHeIyBdJScgm/o/NrSeDdSPBsc4EfEIW246X6sT4Nv9dnSwYgM1V18q15EZNhSm+oSleVZf0m8Y3RCt7j1vhWtETmbZqqy/C3zDb2zFDhJzqhFqa/5DY5dE4sRNp66GMY4o1IpowrpqPTN4oL1qEuTGmS1n7VHcePqZlYPRPa3zPBskqEv8QWJll+qTLsTmxXr1Hvr1KHT1yTmHFrvi9EZyLLbiVk7qqimK9Mt1XdzBH8P8qj/YR6XDhCUIP8Wie6Mt4sbuNBJxMoVVCznS8V8gG7CQY+oW8iwQKKvudve2dL73W8gws5di8IcH+TRswiDudW3Ih4+InM9WW97vM9dzHYYXk+CBBTnlsA2cNhvjlRgGvh+ikX1eWIhDyMXxk9/IpmehWpKZTvkjaOwu0LglBVScN2fDTecw2hdzLn7scCyCaJwKJiDla+sKuvMIO/6VKU0IpZzOlfJac56vk50fFH3Ettkz/syMjpe6RgaIyx/QLcRNOLk7jnd73iYtyfkHztR6USxuUeWzZZnbgZCv0ZtGeXq0jEDSSm3dzKHoCXPMxl8it4yb24PyO+Nh627eYyuq8Vs06nH1HgY6tzam9q63Yh3I1zv4pb0yFN5pVBlVNff3sFkfh+gBQOx8cd3GZA288EEfV5yIZ/CNOhpsCDMw4SRMmLkkw/pJy99DR5XP3Y5bog097Q8Lp8ZEnxqgfpJ0//rpIx1Fmrmyke4bYmh5HO+hLOlQ62HR+ioa084gXzV9wR/xwJ953uT1EJ78aw1W40fcUa03/NJVwUbCOXoVNonVNrNhuqfLXNka7pL4bWvkEZHrTQmTbs1Q4wXZ4Pi8XhLJOfdRJSMhFcf0PXGTOgli5Ke3Z8u92Oi/n1U9iYo5yiBqGEu6Hwv0VDN/bdFjwK852iFU/YOLRowHNTn9U0BySGhL47KnSRpmCFZdCJCdJfjcp8izZU1WydAbvJs/X2ERuZpJbyNqc7IM3QxYbDo6CYRbfiy7cv8gZ/jdoMqWzM2Mpnq/1sBqZRJXeQUhqXzlrGprQUrzTdrpeHt6ElkV3yeJ/oJv964qvJk4JCr00jPT46RWsWeuO0r8qgpOHQkIuEnu0191oiWBVVC4URp1hX3y4SJ6FCbfN1FC2DYg3soOS22X9HjSlX7/j45JroEp956uxV5yJvIaUFTrgVFTzXePUXKJMVwHMXoVxN6Ljq9bN1zyZPPQ7lxT3JX/R4v6L2VJZN3WzjddIx38xLBvBBF62HFm7R2C1kU7/+7djvTyhby4jv9M0YAdPLjjJrNn5pOteM5laZY210kb3Zrv8lBiv6AiHh751zthwNzRNfZejU5WNpnNYvwouQ/3jfg3rOXwqr/YDyELTDvjuMJp2hDvpy+z4nysItJJQt2EOt2Z68baqq9AqqfyUw+kNqLPS9aHy6THV/oZNOfs8DsueK6wymlBCVUY30ftr7H1PLdBiq6tBaiy+08j3BnKHQRP5gEofhr1R0vYzas4u57a8K2+NqKbvuFpz5MzO+nk0me10WGCRQ3f8rd/e7NJytQbWSiBS7JeCk+ZnKJePNx9UAi8l/xwY+oFp3vNpa5ZphqYfQ7FsfqSb9+Sr/r6+eS7qKIYLSpj3CiByspiGb/4m1cymfspu4Ht8dfHdDfi+UHWL7n6BOfhsPHuelGpPjYb7P/2Pw5f/pv0X/B7+pY5DypWCkAAAAAElFTkSuQmCC"),
                                height: 30,
                                width: 50,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Neurology",
                                style: GoogleFonts.aBeeZee(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      color: Colors.white,
                      child: ListTile(
                        leading: const Image(
                          image: NetworkImage(
                              "https://media.licdn.com/dms/image/C4D0BAQHmu-BqLMWOvg/company-logo_200_200/0/1657168857517/motherhood_logo?e=2147483647&v=beta&t=n3hvfvTWjVvWuWbCyzjMS8TGOwPsTKF0esY6qqPdTgk"),
                          height: 400,
                        ),
                        title: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 130),
                              child: Text(
                                "MotherHood Hospital",
                                style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 05, left: 50),
                              child: Row(
                                children: [
                                  Text(
                                    "Cardiology",
                                    style: GoogleFonts.aBeeZee(fontSize: 15),
                                  ),
                                  Text(
                                    ".",
                                    style: GoogleFonts.aBeeZee(fontSize: 15),
                                  ),
                                  Text(
                                    "Medicine",
                                    style: GoogleFonts.aBeeZee(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 05, left: 50),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 13,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                width: 05,
                              ),
                              Text(
                                "4.3",
                                style: GoogleFonts.aBeeZee(),
                              ),
                              const SizedBox(
                                width: 05,
                              ),
                              const Icon(
                                Icons.add_home,
                                size: 13,
                                color: Colors.red,
                              ),
                              const SizedBox(
                                width: 05,
                              ),
                              Text(
                                "121 street, lake side",
                                style: GoogleFonts.aBeeZee(),
                              ),
                            ],
                          ),
                        ),
                      )),
                )
              ],
            ),
          ])),
        ]));
  }
}
