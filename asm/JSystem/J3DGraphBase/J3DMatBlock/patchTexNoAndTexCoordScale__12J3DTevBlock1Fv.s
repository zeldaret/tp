lbl_8031C2E8:
/* 8031C2E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031C2EC  7C 08 02 A6 */	mflr r0
/* 8031C2F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031C2F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031C2F8  93 C1 00 08 */	stw r30, 8(r1)
/* 8031C2FC  7C 7E 1B 78 */	mr r30, r3
/* 8031C300  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031C304  80 64 00 00 */	lwz r3, 0(r4)
/* 8031C308  80 1E 00 04 */	lwz r0, 4(r30)
/* 8031C30C  7C 03 02 14 */	add r0, r3, r0
/* 8031C310  90 04 00 08 */	stw r0, 8(r4)
/* 8031C314  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C318  83 E3 00 08 */	lwz r31, 8(r3)
/* 8031C31C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8031C320  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031C324  41 82 00 10 */	beq lbl_8031C334
/* 8031C328  38 60 00 00 */	li r3, 0
/* 8031C32C  38 9E 00 08 */	addi r4, r30, 8
/* 8031C330  48 00 7C 65 */	bl loadTexNo__FUlRCUs
lbl_8031C334:
/* 8031C334  38 60 00 00 */	li r3, 0
/* 8031C338  88 9E 00 0A */	lbz r4, 0xa(r30)
/* 8031C33C  88 BE 00 0B */	lbz r5, 0xb(r30)
/* 8031C340  88 DE 00 0C */	lbz r6, 0xc(r30)
/* 8031C344  38 E0 00 FF */	li r7, 0xff
/* 8031C348  39 00 00 FF */	li r8, 0xff
/* 8031C34C  39 20 00 FF */	li r9, 0xff
/* 8031C350  4B FF 2D B9 */	bl J3DGDSetTevOrder__F13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 8031C354  88 1E 00 0B */	lbz r0, 0xb(r30)
/* 8031C358  54 04 1E B8 */	rlwinm r4, r0, 3, 0x1a, 0x1c
/* 8031C35C  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha /* 0x80434C2C@ha */
/* 8031C360  38 03 4C 2C */	addi r0, r3, sTexCoordScaleTable__6J3DSys@l /* 0x80434C2C@l */
/* 8031C364  7D 00 22 14 */	add r8, r0, r4
/* 8031C368  88 7E 00 0A */	lbz r3, 0xa(r30)
/* 8031C36C  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031C370  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031C374  20 00 00 01 */	subfic r0, r0, 1
/* 8031C378  7C 00 00 34 */	cntlzw r0, r0
/* 8031C37C  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031C380  38 C0 00 00 */	li r6, 0
/* 8031C384  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031C388  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031C38C  20 00 00 01 */	subfic r0, r0, 1
/* 8031C390  7C 00 00 34 */	cntlzw r0, r0
/* 8031C394  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031C398  39 20 00 00 */	li r9, 0
/* 8031C39C  4B FF 1E 99 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031C3A0  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C3A4  80 03 00 08 */	lwz r0, 8(r3)
/* 8031C3A8  7F E3 FB 78 */	mr r3, r31
/* 8031C3AC  7C 9F 00 50 */	subf r4, r31, r0
/* 8031C3B0  48 01 F2 2D */	bl DCStoreRange
/* 8031C3B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031C3B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8031C3BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031C3C0  7C 08 03 A6 */	mtlr r0
/* 8031C3C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8031C3C8  4E 80 00 20 */	blr 
