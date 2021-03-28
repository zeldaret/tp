lbl_802A42A8:
/* 802A42A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A42AC  7C 08 02 A6 */	mflr r0
/* 802A42B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A42B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A42B8  7C 7F 1B 78 */	mr r31, r3
/* 802A42BC  90 83 00 08 */	stw r4, 8(r3)
/* 802A42C0  80 03 00 08 */	lwz r0, 8(r3)
/* 802A42C4  90 03 00 04 */	stw r0, 4(r3)
/* 802A42C8  80 63 00 04 */	lwz r3, 4(r3)
/* 802A42CC  80 83 00 00 */	lwz r4, 0(r3)
/* 802A42D0  38 03 00 04 */	addi r0, r3, 4
/* 802A42D4  90 1F 00 04 */	stw r0, 4(r31)
/* 802A42D8  3C 04 BE BF */	addis r0, r4, 0xbebf
/* 802A42DC  28 00 5F 3C */	cmplwi r0, 0x5f3c
/* 802A42E0  41 82 00 0C */	beq lbl_802A42EC
/* 802A42E4  38 60 00 00 */	li r3, 0
/* 802A42E8  48 00 00 18 */	b lbl_802A4300
lbl_802A42EC:
/* 802A42EC  7F E3 FB 78 */	mr r3, r31
/* 802A42F0  48 00 00 2D */	bl readCommand___22JAUAudioArcInterpreterFv
/* 802A42F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A42F8  40 82 FF F4 */	bne lbl_802A42EC
/* 802A42FC  38 60 00 01 */	li r3, 1
lbl_802A4300:
/* 802A4300  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A4304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4308  7C 08 03 A6 */	mtlr r0
/* 802A430C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4310  4E 80 00 20 */	blr 
