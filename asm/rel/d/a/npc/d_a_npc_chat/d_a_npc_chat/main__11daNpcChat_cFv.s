lbl_80982F4C:
/* 80982F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80982F50  7C 08 02 A6 */	mflr r0
/* 80982F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80982F58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80982F5C  7C 7F 1B 78 */	mr r31, r3
/* 80982F60  38 7F 0D D8 */	addi r3, r31, 0xdd8
/* 80982F64  4B 9D F0 B4 */	b __ptmf_test
/* 80982F68  2C 03 00 00 */	cmpwi r3, 0
/* 80982F6C  41 82 00 18 */	beq lbl_80982F84
/* 80982F70  7F E3 FB 78 */	mr r3, r31
/* 80982F74  38 80 00 00 */	li r4, 0
/* 80982F78  39 9F 0D D8 */	addi r12, r31, 0xdd8
/* 80982F7C  4B 9D F1 08 */	b __ptmf_scall
/* 80982F80  60 00 00 00 */	nop 
lbl_80982F84:
/* 80982F84  7F E3 FB 78 */	mr r3, r31
/* 80982F88  48 00 0A 59 */	bl playMotion__11daNpcChat_cFv
/* 80982F8C  38 60 00 01 */	li r3, 1
/* 80982F90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80982F94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80982F98  7C 08 03 A6 */	mtlr r0
/* 80982F9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80982FA0  4E 80 00 20 */	blr 
