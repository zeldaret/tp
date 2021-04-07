lbl_802D4438:
/* 802D4438  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802D443C  7C 08 02 A6 */	mflr r0
/* 802D4440  90 01 01 24 */	stw r0, 0x124(r1)
/* 802D4444  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 802D4448  7C 7F 1B 78 */	mr r31, r3
/* 802D444C  80 A3 00 00 */	lwz r5, 0(r3)
/* 802D4450  88 05 00 00 */	lbz r0, 0(r5)
/* 802D4454  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D4458  41 82 00 0C */	beq lbl_802D4464
/* 802D445C  80 6D 8E 98 */	lwz r3, sCurrentVolume__13JKRFileLoader(r13)
/* 802D4460  48 00 00 50 */	b lbl_802D44B0
lbl_802D4464:
/* 802D4464  38 61 00 08 */	addi r3, r1, 8
/* 802D4468  38 80 01 01 */	li r4, 0x101
/* 802D446C  48 00 00 59 */	bl fetchVolumeName__13JKRFileLoaderFPclPCc
/* 802D4470  90 7F 00 00 */	stw r3, 0(r31)
/* 802D4474  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha /* 0x80434354@ha */
/* 802D4478  83 E3 43 54 */	lwz r31, sVolumeList__13JKRFileLoader@l(r3)  /* 0x80434354@l */
/* 802D447C  48 00 00 28 */	b lbl_802D44A4
lbl_802D4480:
/* 802D4480  80 9F 00 00 */	lwz r4, 0(r31)
/* 802D4484  38 61 00 08 */	addi r3, r1, 8
/* 802D4488  80 84 00 28 */	lwz r4, 0x28(r4)
/* 802D448C  48 09 45 09 */	bl strcmp
/* 802D4490  2C 03 00 00 */	cmpwi r3, 0
/* 802D4494  40 82 00 0C */	bne lbl_802D44A0
/* 802D4498  80 7F 00 00 */	lwz r3, 0(r31)
/* 802D449C  48 00 00 14 */	b lbl_802D44B0
lbl_802D44A0:
/* 802D44A0  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802D44A4:
/* 802D44A4  28 1F 00 00 */	cmplwi r31, 0
/* 802D44A8  40 82 FF D8 */	bne lbl_802D4480
/* 802D44AC  38 60 00 00 */	li r3, 0
lbl_802D44B0:
/* 802D44B0  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 802D44B4  80 01 01 24 */	lwz r0, 0x124(r1)
/* 802D44B8  7C 08 03 A6 */	mtlr r0
/* 802D44BC  38 21 01 20 */	addi r1, r1, 0x120
/* 802D44C0  4E 80 00 20 */	blr 
