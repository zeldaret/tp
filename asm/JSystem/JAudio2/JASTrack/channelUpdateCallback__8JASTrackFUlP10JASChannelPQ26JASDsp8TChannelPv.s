lbl_80292CA4:
/* 80292CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80292CA8  7C 08 02 A6 */	mflr r0
/* 80292CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80292CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80292CB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80292CB8  7C 9E 23 78 */	mr r30, r4
/* 80292CBC  7C DF 33 78 */	mr r31, r6
/* 80292CC0  80 06 00 4C */	lwz r0, 0x4c(r6)
/* 80292CC4  2C 03 00 02 */	cmpwi r3, 2
/* 80292CC8  41 82 00 7C */	beq lbl_80292D44
/* 80292CCC  40 80 00 10 */	bge lbl_80292CDC
/* 80292CD0  2C 03 00 00 */	cmpwi r3, 0
/* 80292CD4  40 80 00 14 */	bge lbl_80292CE8
/* 80292CD8  48 00 00 98 */	b lbl_80292D70
lbl_80292CDC:
/* 80292CDC  2C 03 00 04 */	cmpwi r3, 4
/* 80292CE0  40 80 00 90 */	bge lbl_80292D70
/* 80292CE4  48 00 00 40 */	b lbl_80292D24
lbl_80292CE8:
/* 80292CE8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80292CEC  D0 1E 00 9C */	stfs f0, 0x9c(r30)
/* 80292CF0  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80292CF4  D0 1E 00 A0 */	stfs f0, 0xa0(r30)
/* 80292CF8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80292CFC  D0 1E 00 A4 */	stfs f0, 0xa4(r30)
/* 80292D00  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80292D04  D0 1E 00 A8 */	stfs f0, 0xa8(r30)
/* 80292D08  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80292D0C  D0 1E 00 AC */	stfs f0, 0xac(r30)
/* 80292D10  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80292D14  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
/* 80292D18  7C 03 03 78 */	mr r3, r0
/* 80292D1C  4B FF FE D9 */	bl updateChannel__8JASTrackFP10JASChannelPQ26JASDsp8TChannel
/* 80292D20  48 00 00 50 */	b lbl_80292D70
lbl_80292D24:
/* 80292D24  7F C3 F3 78 */	mr r3, r30
/* 80292D28  38 80 00 00 */	li r4, 0
/* 80292D2C  48 00 7D A5 */	bl release__10JASChannelFUs
/* 80292D30  7F C3 F3 78 */	mr r3, r30
/* 80292D34  48 00 8E C9 */	bl free__10JASChannelFv
/* 80292D38  38 00 00 00 */	li r0, 0
/* 80292D3C  90 1F 00 00 */	stw r0, 0(r31)
/* 80292D40  48 00 00 30 */	b lbl_80292D70
lbl_80292D44:
/* 80292D44  38 60 00 00 */	li r3, 0
/* 80292D48  38 00 00 08 */	li r0, 8
/* 80292D4C  7C 09 03 A6 */	mtctr r0
lbl_80292D50:
/* 80292D50  7C 1F 18 2E */	lwzx r0, r31, r3
/* 80292D54  7C 1E 00 40 */	cmplw r30, r0
/* 80292D58  40 82 00 10 */	bne lbl_80292D68
/* 80292D5C  38 00 00 00 */	li r0, 0
/* 80292D60  7C 1F 19 2E */	stwx r0, r31, r3
/* 80292D64  48 00 00 0C */	b lbl_80292D70
lbl_80292D68:
/* 80292D68  38 63 00 04 */	addi r3, r3, 4
/* 80292D6C  42 00 FF E4 */	bdnz lbl_80292D50
lbl_80292D70:
/* 80292D70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80292D74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80292D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80292D7C  7C 08 03 A6 */	mtlr r0
/* 80292D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80292D84  4E 80 00 20 */	blr 
