lbl_80BEA734:
/* 80BEA734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEA738  7C 08 02 A6 */	mflr r0
/* 80BEA73C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEA740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEA744  7C 7F 1B 78 */	mr r31, r3
/* 80BEA748  3C 60 80 BF */	lis r3, cNullVec__6Z2Calc@ha /* 0x80BEB528@ha */
/* 80BEA74C  38 C3 B5 28 */	addi r6, r3, cNullVec__6Z2Calc@l /* 0x80BEB528@l */
/* 80BEA750  3C 60 80 BF */	lis r3, data_80BEB6E0@ha /* 0x80BEB6E0@ha */
/* 80BEA754  38 A3 B6 E0 */	addi r5, r3, data_80BEB6E0@l /* 0x80BEB6E0@l */
/* 80BEA758  88 05 00 00 */	lbz r0, 0(r5)
/* 80BEA75C  7C 00 07 75 */	extsb. r0, r0
/* 80BEA760  40 82 00 58 */	bne lbl_80BEA7B8
/* 80BEA764  80 66 00 88 */	lwz r3, 0x88(r6)
/* 80BEA768  80 06 00 8C */	lwz r0, 0x8c(r6)
/* 80BEA76C  90 66 00 AC */	stw r3, 0xac(r6)
/* 80BEA770  90 06 00 B0 */	stw r0, 0xb0(r6)
/* 80BEA774  80 06 00 90 */	lwz r0, 0x90(r6)
/* 80BEA778  90 06 00 B4 */	stw r0, 0xb4(r6)
/* 80BEA77C  38 86 00 AC */	addi r4, r6, 0xac
/* 80BEA780  80 66 00 94 */	lwz r3, 0x94(r6)
/* 80BEA784  80 06 00 98 */	lwz r0, 0x98(r6)
/* 80BEA788  90 64 00 0C */	stw r3, 0xc(r4)
/* 80BEA78C  90 04 00 10 */	stw r0, 0x10(r4)
/* 80BEA790  80 06 00 9C */	lwz r0, 0x9c(r6)
/* 80BEA794  90 04 00 14 */	stw r0, 0x14(r4)
/* 80BEA798  80 66 00 A0 */	lwz r3, 0xa0(r6)
/* 80BEA79C  80 06 00 A4 */	lwz r0, 0xa4(r6)
/* 80BEA7A0  90 64 00 18 */	stw r3, 0x18(r4)
/* 80BEA7A4  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80BEA7A8  80 06 00 A8 */	lwz r0, 0xa8(r6)
/* 80BEA7AC  90 04 00 20 */	stw r0, 0x20(r4)
/* 80BEA7B0  38 00 00 01 */	li r0, 1
/* 80BEA7B4  98 05 00 00 */	stb r0, 0(r5)
lbl_80BEA7B8:
/* 80BEA7B8  7F E3 FB 78 */	mr r3, r31
/* 80BEA7BC  88 1F 09 7F */	lbz r0, 0x97f(r31)
/* 80BEA7C0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BEA7C4  39 86 00 AC */	addi r12, r6, 0xac
/* 80BEA7C8  7D 8C 02 14 */	add r12, r12, r0
/* 80BEA7CC  4B 77 78 B9 */	bl __ptmf_scall
/* 80BEA7D0  60 00 00 00 */	nop 
/* 80BEA7D4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80BEA7D8  28 03 00 00 */	cmplwi r3, 0
/* 80BEA7DC  41 82 00 08 */	beq lbl_80BEA7E4
/* 80BEA7E0  4B 42 2C 49 */	bl play__14mDoExt_baseAnmFv
lbl_80BEA7E4:
/* 80BEA7E4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80BEA7E8  28 03 00 00 */	cmplwi r3, 0
/* 80BEA7EC  41 82 00 08 */	beq lbl_80BEA7F4
/* 80BEA7F0  4B 42 2C 39 */	bl play__14mDoExt_baseAnmFv
lbl_80BEA7F4:
/* 80BEA7F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEA7F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEA7FC  7C 08 03 A6 */	mtlr r0
/* 80BEA800  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEA804  4E 80 00 20 */	blr 
