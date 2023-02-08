lbl_80372BCC:
/* 80372BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80372BD0  7C 08 02 A6 */	mflr r0
/* 80372BD4  3C A0 80 3A */	lis r5, lit_348@ha /* 0x803A2EA4@ha */
/* 80372BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80372BDC  38 05 2E A4 */	addi r0, r5, lit_348@l /* 0x803A2EA4@l */
/* 80372BE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80372BE4  7C 9F 23 78 */	mr r31, r4
/* 80372BE8  7C 04 03 78 */	mr r4, r0
/* 80372BEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80372BF0  7C 7E 1B 78 */	mr r30, r3
/* 80372BF4  38 60 00 01 */	li r3, 1
/* 80372BF8  4C C6 31 82 */	crclr 6
/* 80372BFC  48 00 00 59 */	bl MWTRACE
/* 80372C00  7F C3 F3 78 */	mr r3, r30
/* 80372C04  7F E4 FB 78 */	mr r4, r31
/* 80372C08  48 00 05 09 */	bl DBInitComm
/* 80372C0C  3C 80 80 3A */	lis r4, lit_349@ha /* 0x803A2EB8@ha */
/* 80372C10  38 60 00 01 */	li r3, 1
/* 80372C14  38 84 2E B8 */	addi r4, r4, lit_349@l /* 0x803A2EB8@l */
/* 80372C18  4C C6 31 82 */	crclr 6
/* 80372C1C  48 00 00 39 */	bl MWTRACE
/* 80372C20  3C 60 80 45 */	lis r3, gRecvCB@ha /* 0x80450550@ha */
/* 80372C24  3C 80 80 45 */	lis r4, gRecvBuf@ha /* 0x80450050@ha */
/* 80372C28  38 63 05 50 */	addi r3, r3, gRecvCB@l /* 0x80450550@l */
/* 80372C2C  38 A0 05 00 */	li r5, 0x500
/* 80372C30  38 84 00 50 */	addi r4, r4, gRecvBuf@l /* 0x80450050@l */
/* 80372C34  4B FF FC 7D */	bl CircleBufferInitialize
/* 80372C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80372C3C  38 60 00 00 */	li r3, 0
/* 80372C40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80372C44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80372C48  7C 08 03 A6 */	mtlr r0
/* 80372C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80372C50  4E 80 00 20 */	blr 
