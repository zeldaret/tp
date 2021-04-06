lbl_807DA6EC:
/* 807DA6EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807DA6F0  7C 08 02 A6 */	mflr r0
/* 807DA6F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 807DA6F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807DA6FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807DA700  7C 7E 1B 78 */	mr r30, r3
/* 807DA704  3C 60 FF 01 */	lis r3, 0xFF01 /* 0xFF010300@ha */
/* 807DA708  3B E3 03 00 */	addi r31, r3, 0x0300 /* 0xFF010300@l */
/* 807DA70C  88 1E 17 E1 */	lbz r0, 0x17e1(r30)
/* 807DA710  28 00 00 00 */	cmplwi r0, 0
/* 807DA714  41 82 00 0C */	beq lbl_807DA720
/* 807DA718  3C 60 FF 02 */	lis r3, 0xFF02 /* 0xFF020300@ha */
/* 807DA71C  3B E3 03 00 */	addi r31, r3, 0x0300 /* 0xFF020300@l */
lbl_807DA720:
/* 807DA720  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807DA724  D0 01 00 08 */	stfs f0, 8(r1)
/* 807DA728  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807DA72C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807DA730  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807DA734  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807DA738  38 60 01 D4 */	li r3, 0x1d4
/* 807DA73C  63 E4 00 01 */	ori r4, r31, 1
/* 807DA740  38 A1 00 08 */	addi r5, r1, 8
/* 807DA744  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807DA748  7C 06 07 74 */	extsb r6, r0
/* 807DA74C  38 E0 00 00 */	li r7, 0
/* 807DA750  39 00 00 00 */	li r8, 0
/* 807DA754  39 20 FF FF */	li r9, -1
/* 807DA758  4B 83 F6 41 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 807DA75C  38 60 01 D4 */	li r3, 0x1d4
/* 807DA760  63 E4 00 02 */	ori r4, r31, 2
/* 807DA764  38 A1 00 08 */	addi r5, r1, 8
/* 807DA768  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807DA76C  7C 06 07 74 */	extsb r6, r0
/* 807DA770  38 E0 00 00 */	li r7, 0
/* 807DA774  39 00 00 00 */	li r8, 0
/* 807DA778  39 20 FF FF */	li r9, -1
/* 807DA77C  4B 83 F6 1D */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 807DA780  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807DA784  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807DA788  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807DA78C  7C 08 03 A6 */	mtlr r0
/* 807DA790  38 21 00 20 */	addi r1, r1, 0x20
/* 807DA794  4E 80 00 20 */	blr 
