lbl_8068C350:
/* 8068C350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068C354  7C 08 02 A6 */	mflr r0
/* 8068C358  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068C35C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068C360  93 C1 00 08 */	stw r30, 8(r1)
/* 8068C364  7C 7E 1B 79 */	or. r30, r3, r3
/* 8068C368  7C 9F 23 78 */	mr r31, r4
/* 8068C36C  41 82 00 40 */	beq lbl_8068C3AC
/* 8068C370  3C 80 80 69 */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x8068DA98@ha */
/* 8068C374  38 84 DA 98 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x8068DA98@l */
/* 8068C378  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8068C37C  38 04 00 0C */	addi r0, r4, 0xc
/* 8068C380  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8068C384  38 04 00 18 */	addi r0, r4, 0x18
/* 8068C388  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8068C38C  38 04 00 24 */	addi r0, r4, 0x24
/* 8068C390  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8068C394  38 80 00 00 */	li r4, 0
/* 8068C398  4B 9E B2 59 */	bl __dt__11dBgS_GndChkFv
/* 8068C39C  7F E0 07 35 */	extsh. r0, r31
/* 8068C3A0  40 81 00 0C */	ble lbl_8068C3AC
/* 8068C3A4  7F C3 F3 78 */	mr r3, r30
/* 8068C3A8  4B C4 29 95 */	bl __dl__FPv
lbl_8068C3AC:
/* 8068C3AC  7F C3 F3 78 */	mr r3, r30
/* 8068C3B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068C3B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8068C3B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068C3BC  7C 08 03 A6 */	mtlr r0
/* 8068C3C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8068C3C4  4E 80 00 20 */	blr 
