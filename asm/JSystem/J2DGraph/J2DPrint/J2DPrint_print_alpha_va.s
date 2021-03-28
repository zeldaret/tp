lbl_802F42F0:
/* 802F42F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F42F4  7C 08 02 A6 */	mflr r0
/* 802F42F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F42FC  39 61 00 20 */	addi r11, r1, 0x20
/* 802F4300  48 06 DE D9 */	bl _savegpr_28
/* 802F4304  7C 7C 1B 78 */	mr r28, r3
/* 802F4308  7C 9D 23 78 */	mr r29, r4
/* 802F430C  7C BE 2B 78 */	mr r30, r5
/* 802F4310  7C DF 33 78 */	mr r31, r6
/* 802F4314  48 00 16 39 */	bl initchar__8J2DPrintFv
/* 802F4318  80 6D 90 00 */	lwz r3, mStrBuff__8J2DPrint(r13)
/* 802F431C  80 8D 90 08 */	lwz r4, mStrBuffSize__8J2DPrint(r13)
/* 802F4320  7F C5 F3 78 */	mr r5, r30
/* 802F4324  7F E6 FB 78 */	mr r6, r31
/* 802F4328  48 07 23 69 */	bl vsnprintf
/* 802F432C  7C 65 1B 79 */	or. r5, r3, r3
/* 802F4330  40 80 00 0C */	bge lbl_802F433C
/* 802F4334  C0 22 C7 C8 */	lfs f1, lit_418(r2)
/* 802F4338  48 00 00 44 */	b lbl_802F437C
lbl_802F433C:
/* 802F433C  80 6D 90 08 */	lwz r3, mStrBuffSize__8J2DPrint(r13)
/* 802F4340  7C 05 18 40 */	cmplw r5, r3
/* 802F4344  41 80 00 10 */	blt lbl_802F4354
/* 802F4348  38 A3 FF FF */	addi r5, r3, -1
/* 802F434C  38 00 00 01 */	li r0, 1
/* 802F4350  98 0D 90 0C */	stb r0, data_8045158C(r13)
lbl_802F4354:
/* 802F4354  7F 83 E3 78 */	mr r3, r28
/* 802F4358  80 8D 90 00 */	lwz r4, mStrBuff__8J2DPrint(r13)
/* 802F435C  3C C0 80 00 */	lis r6, 0x8000 /* 0x7FFFFFFF@ha */
/* 802F4360  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x7FFFFFFF@l */
/* 802F4364  38 E0 00 00 */	li r7, 0
/* 802F4368  39 01 00 08 */	addi r8, r1, 8
/* 802F436C  7F A9 EB 78 */	mr r9, r29
/* 802F4370  39 40 00 01 */	li r10, 1
/* 802F4374  48 00 07 D9 */	bl parse__8J2DPrintFPCUciiPUsRQ28J2DPrint5TSizeUcb
/* 802F4378  C0 21 00 08 */	lfs f1, 8(r1)
lbl_802F437C:
/* 802F437C  39 61 00 20 */	addi r11, r1, 0x20
/* 802F4380  48 06 DE A5 */	bl _restgpr_28
/* 802F4384  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F4388  7C 08 03 A6 */	mtlr r0
/* 802F438C  38 21 00 20 */	addi r1, r1, 0x20
/* 802F4390  4E 80 00 20 */	blr 
