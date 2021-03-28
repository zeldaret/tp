lbl_800BB020:
/* 800BB020  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800BB024  28 00 00 CB */	cmplwi r0, 0xcb
/* 800BB028  41 82 00 0C */	beq lbl_800BB034
/* 800BB02C  28 00 00 C8 */	cmplwi r0, 0xc8
/* 800BB030  40 82 00 20 */	bne lbl_800BB050
lbl_800BB034:
/* 800BB034  A8 03 30 20 */	lha r0, 0x3020(r3)
/* 800BB038  2C 00 00 00 */	cmpwi r0, 0
/* 800BB03C  40 82 00 0C */	bne lbl_800BB048
/* 800BB040  38 00 00 07 */	li r0, 7
/* 800BB044  48 00 00 10 */	b lbl_800BB054
lbl_800BB048:
/* 800BB048  38 00 00 0C */	li r0, 0xc
/* 800BB04C  48 00 00 08 */	b lbl_800BB054
lbl_800BB050:
/* 800BB050  38 00 00 01 */	li r0, 1
lbl_800BB054:
/* 800BB054  80 63 06 50 */	lwz r3, 0x650(r3)
/* 800BB058  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800BB05C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800BB060  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800BB064  7C 63 02 14 */	add r3, r3, r0
/* 800BB068  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800BB06C  D0 04 00 00 */	stfs f0, 0(r4)
/* 800BB070  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800BB074  D0 04 00 04 */	stfs f0, 4(r4)
/* 800BB078  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800BB07C  D0 04 00 08 */	stfs f0, 8(r4)
/* 800BB080  4E 80 00 20 */	blr 
