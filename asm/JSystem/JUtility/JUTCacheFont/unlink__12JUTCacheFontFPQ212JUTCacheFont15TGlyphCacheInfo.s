lbl_802DDF68:
/* 802DDF68  80 A4 00 00 */	lwz r5, 0(r4)
/* 802DDF6C  28 05 00 00 */	cmplwi r5, 0
/* 802DDF70  40 82 00 10 */	bne lbl_802DDF80
/* 802DDF74  80 04 00 04 */	lwz r0, 4(r4)
/* 802DDF78  90 03 00 9C */	stw r0, 0x9c(r3)
/* 802DDF7C  48 00 00 0C */	b lbl_802DDF88
lbl_802DDF80:
/* 802DDF80  80 04 00 04 */	lwz r0, 4(r4)
/* 802DDF84  90 05 00 04 */	stw r0, 4(r5)
lbl_802DDF88:
/* 802DDF88  80 A4 00 04 */	lwz r5, 4(r4)
/* 802DDF8C  28 05 00 00 */	cmplwi r5, 0
/* 802DDF90  40 82 00 10 */	bne lbl_802DDFA0
/* 802DDF94  80 04 00 00 */	lwz r0, 0(r4)
/* 802DDF98  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 802DDF9C  4E 80 00 20 */	blr 
lbl_802DDFA0:
/* 802DDFA0  80 04 00 00 */	lwz r0, 0(r4)
/* 802DDFA4  90 05 00 00 */	stw r0, 0(r5)
/* 802DDFA8  4E 80 00 20 */	blr 
