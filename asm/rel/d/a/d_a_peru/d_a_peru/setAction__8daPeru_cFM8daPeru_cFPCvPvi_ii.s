lbl_80D48364:
/* 80D48364  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D48368  7C 08 02 A6 */	mflr r0
/* 80D4836C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D48370  39 61 00 20 */	addi r11, r1, 0x20
/* 80D48374  4B 61 9E 68 */	b _savegpr_29
/* 80D48378  7C 7D 1B 78 */	mr r29, r3
/* 80D4837C  7C 9E 23 78 */	mr r30, r4
/* 80D48380  7C BF 2B 78 */	mr r31, r5
/* 80D48384  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80D48388  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80D4838C  B0 1D 0E 22 */	sth r0, 0xe22(r29)
/* 80D48390  38 7D 0E 5C */	addi r3, r29, 0xe5c
/* 80D48394  4B 61 9C 84 */	b __ptmf_test
/* 80D48398  2C 03 00 00 */	cmpwi r3, 0
/* 80D4839C  41 82 00 18 */	beq lbl_80D483B4
/* 80D483A0  7F A3 EB 78 */	mr r3, r29
/* 80D483A4  38 80 00 00 */	li r4, 0
/* 80D483A8  39 9D 0E 5C */	addi r12, r29, 0xe5c
/* 80D483AC  4B 61 9C D8 */	b __ptmf_scall
/* 80D483B0  60 00 00 00 */	nop 
lbl_80D483B4:
/* 80D483B4  38 00 00 00 */	li r0, 0
/* 80D483B8  B0 1D 0E 22 */	sth r0, 0xe22(r29)
/* 80D483BC  80 7E 00 00 */	lwz r3, 0(r30)
/* 80D483C0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80D483C4  90 7D 0E 5C */	stw r3, 0xe5c(r29)
/* 80D483C8  90 1D 0E 60 */	stw r0, 0xe60(r29)
/* 80D483CC  80 1E 00 08 */	lwz r0, 8(r30)
/* 80D483D0  90 1D 0E 64 */	stw r0, 0xe64(r29)
/* 80D483D4  38 7D 0E 5C */	addi r3, r29, 0xe5c
/* 80D483D8  4B 61 9C 40 */	b __ptmf_test
/* 80D483DC  2C 03 00 00 */	cmpwi r3, 0
/* 80D483E0  41 82 00 18 */	beq lbl_80D483F8
/* 80D483E4  7F A3 EB 78 */	mr r3, r29
/* 80D483E8  7F E4 FB 78 */	mr r4, r31
/* 80D483EC  39 9D 0E 5C */	addi r12, r29, 0xe5c
/* 80D483F0  4B 61 9C 94 */	b __ptmf_scall
/* 80D483F4  60 00 00 00 */	nop 
lbl_80D483F8:
/* 80D483F8  38 60 00 01 */	li r3, 1
/* 80D483FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D48400  4B 61 9E 28 */	b _restgpr_29
/* 80D48404  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D48408  7C 08 03 A6 */	mtlr r0
/* 80D4840C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D48410  4E 80 00 20 */	blr 
