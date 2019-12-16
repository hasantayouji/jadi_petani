import 'package:flutter/material.dart';
import 'package:jadi_petani/constants.dart';

class InvestCard extends StatelessWidget {
  final String judul;
  final int harga;
  final String alokasi;
  final String lokasi;
  final String profit;
  InvestCard(
      {@required this.judul,
      this.harga,
      this.alokasi,
      this.lokasi,
      this.profit});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      child: Container(
        color: Colors.black54,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              judul,
              style: kLargeWhiteTextStyle,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Rp  ',
                  style: kSmallWhiteTextStyle,
                ),
                Text(
                  '$harga',
                  style: kXLargeWhiteTextStyle,
                ),
                Text(
                  '  Juta',
                  style: kSmallWhiteTextStyle,
                ),
              ],
            ),
            Divider(
              color: Colors.white,
              height: 1,
              indent: 8.0,
              endIndent: 8.0,
            ),
            Text(
              'Alokasi Dana',
              style: kMediumWhiteTextStyleBold,
            ),
            Text(
              alokasi,
              style: kMediumWhiteTextStyle,
            ),
            Divider(
              color: Colors.white,
              height: 1,
              indent: 8.0,
              endIndent: 8.0,
            ),
            Text(
              'Lokasi',
              style: kMediumWhiteTextStyleBold,
            ),
            Text(
              lokasi,
              style: kMediumWhiteTextStyle,
            ),
            Divider(
              color: Colors.white,
              height: 1,
              indent: 8.0,
              endIndent: 8.0,
            ),
            Text(
              'Profit',
              style: kMediumWhiteTextStyleBold,
            ),
            Text(
              profit,
              style: kMediumWhiteTextStyle,
            ),
            RaisedButton(
              color: Colors.redAccent,
              elevation: 6.0,
              onPressed: () {},
              child: Text(
                'MAU INVESTASI',
                style: kLargeWhiteTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
