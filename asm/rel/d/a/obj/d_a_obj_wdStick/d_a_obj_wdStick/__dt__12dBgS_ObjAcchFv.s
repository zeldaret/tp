lbl_80D320F8:
/* 80D320F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D320FC  7C 08 02 A6 */	mflr r0
/* 80D32100  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D32104  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D32108  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3210C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D32110  7C 9F 23 78 */	mr r31, r4
/* 80D32114  41 82 00 38 */	beq lbl_80D3214C
/* 80D32118  3C 80 80 D3 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80D343BC@ha */
/* 80D3211C  38 84 43 BC */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80D343BC@l */
/* 80D32120  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D32124  38 04 00 0C */	addi r0, r4, 0xc
/* 80D32128  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D3212C  38 04 00 18 */	addi r0, r4, 0x18
/* 80D32130  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D32134  38 80 00 00 */	li r4, 0
/* 80D32138  4B 34 3E 5D */	bl __dt__9dBgS_AcchFv
/* 80D3213C  7F E0 07 35 */	extsh. r0, r31
/* 80D32140  40 81 00 0C */	ble lbl_80D3214C
/* 80D32144  7F C3 F3 78 */	mr r3, r30
/* 80D32148  4B 59 CB F5 */	bl __dl__FPv
lbl_80D3214C:
/* 80D3214C  7F C3 F3 78 */	mr r3, r30
/* 80D32150  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D32154  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D32158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3215C  7C 08 03 A6 */	mtlr r0
/* 80D32160  38 21 00 10 */	addi r1, r1, 0x10
/* 80D32164  4E 80 00 20 */	blr 
