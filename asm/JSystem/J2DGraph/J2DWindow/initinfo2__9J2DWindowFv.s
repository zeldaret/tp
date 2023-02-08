lbl_802FA604:
/* 802FA604  80 A3 01 00 */	lwz r5, 0x100(r3)
/* 802FA608  28 05 00 00 */	cmplwi r5, 0
/* 802FA60C  41 82 00 64 */	beq lbl_802FA670
/* 802FA610  80 83 01 04 */	lwz r4, 0x104(r3)
/* 802FA614  28 04 00 00 */	cmplwi r4, 0
/* 802FA618  41 82 00 58 */	beq lbl_802FA670
/* 802FA61C  80 03 01 08 */	lwz r0, 0x108(r3)
/* 802FA620  28 00 00 00 */	cmplwi r0, 0
/* 802FA624  41 82 00 4C */	beq lbl_802FA670
/* 802FA628  80 03 01 0C */	lwz r0, 0x10c(r3)
/* 802FA62C  28 00 00 00 */	cmplwi r0, 0
/* 802FA630  41 82 00 40 */	beq lbl_802FA670
/* 802FA634  80 84 00 20 */	lwz r4, 0x20(r4)
/* 802FA638  A0 04 00 02 */	lhz r0, 2(r4)
/* 802FA63C  80 85 00 20 */	lwz r4, 0x20(r5)
/* 802FA640  A0 84 00 02 */	lhz r4, 2(r4)
/* 802FA644  7C 04 02 14 */	add r0, r4, r0
/* 802FA648  B0 03 01 40 */	sth r0, 0x140(r3)
/* 802FA64C  80 83 01 08 */	lwz r4, 0x108(r3)
/* 802FA650  80 84 00 20 */	lwz r4, 0x20(r4)
/* 802FA654  A0 04 00 04 */	lhz r0, 4(r4)
/* 802FA658  80 83 01 00 */	lwz r4, 0x100(r3)
/* 802FA65C  80 84 00 20 */	lwz r4, 0x20(r4)
/* 802FA660  A0 84 00 04 */	lhz r4, 4(r4)
/* 802FA664  7C 04 02 14 */	add r0, r4, r0
/* 802FA668  B0 03 01 42 */	sth r0, 0x142(r3)
/* 802FA66C  48 00 00 14 */	b lbl_802FA680
lbl_802FA670:
/* 802FA670  38 00 00 01 */	li r0, 1
/* 802FA674  B0 03 01 40 */	sth r0, 0x140(r3)
/* 802FA678  B0 03 01 42 */	sth r0, 0x142(r3)
/* 802FA67C  4E 80 00 20 */	blr 
lbl_802FA680:
/* 802FA680  38 C0 00 00 */	li r6, 0
/* 802FA684  98 C3 01 45 */	stb r6, 0x145(r3)
/* 802FA688  80 83 01 00 */	lwz r4, 0x100(r3)
/* 802FA68C  80 E3 01 04 */	lwz r7, 0x104(r3)
/* 802FA690  80 A7 00 20 */	lwz r5, 0x20(r7)
/* 802FA694  80 04 00 20 */	lwz r0, 0x20(r4)
/* 802FA698  7C 05 00 40 */	cmplw r5, r0
/* 802FA69C  40 82 00 7C */	bne lbl_802FA718
/* 802FA6A0  80 A7 00 2C */	lwz r5, 0x2c(r7)
/* 802FA6A4  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 802FA6A8  7C 05 00 40 */	cmplw r5, r0
/* 802FA6AC  40 82 00 6C */	bne lbl_802FA718
/* 802FA6B0  88 A7 00 30 */	lbz r5, 0x30(r7)
/* 802FA6B4  88 04 00 30 */	lbz r0, 0x30(r4)
/* 802FA6B8  7C 05 00 40 */	cmplw r5, r0
/* 802FA6BC  40 82 00 5C */	bne lbl_802FA718
/* 802FA6C0  88 A7 00 31 */	lbz r5, 0x31(r7)
/* 802FA6C4  88 04 00 31 */	lbz r0, 0x31(r4)
/* 802FA6C8  7C 05 00 40 */	cmplw r5, r0
/* 802FA6CC  40 82 00 4C */	bne lbl_802FA718
/* 802FA6D0  88 A7 00 32 */	lbz r5, 0x32(r7)
/* 802FA6D4  88 04 00 32 */	lbz r0, 0x32(r4)
/* 802FA6D8  7C 05 00 40 */	cmplw r5, r0
/* 802FA6DC  40 82 00 3C */	bne lbl_802FA718
/* 802FA6E0  88 A7 00 33 */	lbz r5, 0x33(r7)
/* 802FA6E4  88 04 00 33 */	lbz r0, 0x33(r4)
/* 802FA6E8  7C 05 00 40 */	cmplw r5, r0
/* 802FA6EC  40 82 00 2C */	bne lbl_802FA718
/* 802FA6F0  A0 A7 00 34 */	lhz r5, 0x34(r7)
/* 802FA6F4  A0 04 00 34 */	lhz r0, 0x34(r4)
/* 802FA6F8  7C 05 00 40 */	cmplw r5, r0
/* 802FA6FC  40 82 00 1C */	bne lbl_802FA718
/* 802FA700  40 82 00 18 */	bne lbl_802FA718
/* 802FA704  A8 A7 00 38 */	lha r5, 0x38(r7)
/* 802FA708  A8 04 00 38 */	lha r0, 0x38(r4)
/* 802FA70C  7C 05 00 00 */	cmpw r5, r0
/* 802FA710  40 82 00 08 */	bne lbl_802FA718
/* 802FA714  38 C0 00 01 */	li r6, 1
lbl_802FA718:
/* 802FA718  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 802FA71C  40 82 00 14 */	bne lbl_802FA730
/* 802FA720  88 03 01 45 */	lbz r0, 0x145(r3)
/* 802FA724  60 00 00 01 */	ori r0, r0, 1
/* 802FA728  98 03 01 45 */	stb r0, 0x145(r3)
/* 802FA72C  80 83 01 04 */	lwz r4, 0x104(r3)
lbl_802FA730:
/* 802FA730  80 E3 01 0C */	lwz r7, 0x10c(r3)
/* 802FA734  38 C0 00 00 */	li r6, 0
/* 802FA738  80 A7 00 20 */	lwz r5, 0x20(r7)
/* 802FA73C  80 04 00 20 */	lwz r0, 0x20(r4)
/* 802FA740  7C 05 00 40 */	cmplw r5, r0
/* 802FA744  40 82 00 7C */	bne lbl_802FA7C0
/* 802FA748  80 A7 00 2C */	lwz r5, 0x2c(r7)
/* 802FA74C  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 802FA750  7C 05 00 40 */	cmplw r5, r0
/* 802FA754  40 82 00 6C */	bne lbl_802FA7C0
/* 802FA758  88 A7 00 30 */	lbz r5, 0x30(r7)
/* 802FA75C  88 04 00 30 */	lbz r0, 0x30(r4)
/* 802FA760  7C 05 00 40 */	cmplw r5, r0
/* 802FA764  40 82 00 5C */	bne lbl_802FA7C0
/* 802FA768  88 A7 00 31 */	lbz r5, 0x31(r7)
/* 802FA76C  88 04 00 31 */	lbz r0, 0x31(r4)
/* 802FA770  7C 05 00 40 */	cmplw r5, r0
/* 802FA774  40 82 00 4C */	bne lbl_802FA7C0
/* 802FA778  88 A7 00 32 */	lbz r5, 0x32(r7)
/* 802FA77C  88 04 00 32 */	lbz r0, 0x32(r4)
/* 802FA780  7C 05 00 40 */	cmplw r5, r0
/* 802FA784  40 82 00 3C */	bne lbl_802FA7C0
/* 802FA788  88 A7 00 33 */	lbz r5, 0x33(r7)
/* 802FA78C  88 04 00 33 */	lbz r0, 0x33(r4)
/* 802FA790  7C 05 00 40 */	cmplw r5, r0
/* 802FA794  40 82 00 2C */	bne lbl_802FA7C0
/* 802FA798  A0 A7 00 34 */	lhz r5, 0x34(r7)
/* 802FA79C  A0 04 00 34 */	lhz r0, 0x34(r4)
/* 802FA7A0  7C 05 00 40 */	cmplw r5, r0
/* 802FA7A4  40 82 00 1C */	bne lbl_802FA7C0
/* 802FA7A8  40 82 00 18 */	bne lbl_802FA7C0
/* 802FA7AC  A8 A7 00 38 */	lha r5, 0x38(r7)
/* 802FA7B0  A8 04 00 38 */	lha r0, 0x38(r4)
/* 802FA7B4  7C 05 00 00 */	cmpw r5, r0
/* 802FA7B8  40 82 00 08 */	bne lbl_802FA7C0
/* 802FA7BC  38 C0 00 01 */	li r6, 1
lbl_802FA7C0:
/* 802FA7C0  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 802FA7C4  40 82 00 14 */	bne lbl_802FA7D8
/* 802FA7C8  88 03 01 45 */	lbz r0, 0x145(r3)
/* 802FA7CC  60 00 00 02 */	ori r0, r0, 2
/* 802FA7D0  98 03 01 45 */	stb r0, 0x145(r3)
/* 802FA7D4  80 83 01 0C */	lwz r4, 0x10c(r3)
lbl_802FA7D8:
/* 802FA7D8  80 E3 01 08 */	lwz r7, 0x108(r3)
/* 802FA7DC  38 C0 00 00 */	li r6, 0
/* 802FA7E0  80 A7 00 20 */	lwz r5, 0x20(r7)
/* 802FA7E4  80 04 00 20 */	lwz r0, 0x20(r4)
/* 802FA7E8  7C 05 00 40 */	cmplw r5, r0
/* 802FA7EC  40 82 00 7C */	bne lbl_802FA868
/* 802FA7F0  80 A7 00 2C */	lwz r5, 0x2c(r7)
/* 802FA7F4  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 802FA7F8  7C 05 00 40 */	cmplw r5, r0
/* 802FA7FC  40 82 00 6C */	bne lbl_802FA868
/* 802FA800  88 A7 00 30 */	lbz r5, 0x30(r7)
/* 802FA804  88 04 00 30 */	lbz r0, 0x30(r4)
/* 802FA808  7C 05 00 40 */	cmplw r5, r0
/* 802FA80C  40 82 00 5C */	bne lbl_802FA868
/* 802FA810  88 A7 00 31 */	lbz r5, 0x31(r7)
/* 802FA814  88 04 00 31 */	lbz r0, 0x31(r4)
/* 802FA818  7C 05 00 40 */	cmplw r5, r0
/* 802FA81C  40 82 00 4C */	bne lbl_802FA868
/* 802FA820  88 A7 00 32 */	lbz r5, 0x32(r7)
/* 802FA824  88 04 00 32 */	lbz r0, 0x32(r4)
/* 802FA828  7C 05 00 40 */	cmplw r5, r0
/* 802FA82C  40 82 00 3C */	bne lbl_802FA868
/* 802FA830  88 A7 00 33 */	lbz r5, 0x33(r7)
/* 802FA834  88 04 00 33 */	lbz r0, 0x33(r4)
/* 802FA838  7C 05 00 40 */	cmplw r5, r0
/* 802FA83C  40 82 00 2C */	bne lbl_802FA868
/* 802FA840  A0 A7 00 34 */	lhz r5, 0x34(r7)
/* 802FA844  A0 04 00 34 */	lhz r0, 0x34(r4)
/* 802FA848  7C 05 00 40 */	cmplw r5, r0
/* 802FA84C  40 82 00 1C */	bne lbl_802FA868
/* 802FA850  40 82 00 18 */	bne lbl_802FA868
/* 802FA854  A8 A7 00 38 */	lha r5, 0x38(r7)
/* 802FA858  A8 04 00 38 */	lha r0, 0x38(r4)
/* 802FA85C  7C 05 00 00 */	cmpw r5, r0
/* 802FA860  40 82 00 08 */	bne lbl_802FA868
/* 802FA864  38 C0 00 01 */	li r6, 1
lbl_802FA868:
/* 802FA868  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 802FA86C  4C 82 00 20 */	bnelr 
/* 802FA870  88 03 01 45 */	lbz r0, 0x145(r3)
/* 802FA874  60 00 00 04 */	ori r0, r0, 4
/* 802FA878  98 03 01 45 */	stb r0, 0x145(r3)
/* 802FA87C  4E 80 00 20 */	blr 
