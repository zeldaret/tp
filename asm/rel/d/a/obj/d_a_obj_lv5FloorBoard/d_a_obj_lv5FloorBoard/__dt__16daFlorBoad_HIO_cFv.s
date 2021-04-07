lbl_80C6B058:
/* 80C6B058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6B05C  7C 08 02 A6 */	mflr r0
/* 80C6B060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6B064  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6B068  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6B06C  41 82 00 40 */	beq lbl_80C6B0AC
/* 80C6B070  3C 60 80 C7 */	lis r3, __vt__16daFlorBoad_HIO_c@ha /* 0x80C6B2D4@ha */
/* 80C6B074  38 03 B2 D4 */	addi r0, r3, __vt__16daFlorBoad_HIO_c@l /* 0x80C6B2D4@l */
/* 80C6B078  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6B07C  41 82 00 20 */	beq lbl_80C6B09C
/* 80C6B080  3C 60 80 C7 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha /* 0x80C6B2E0@ha */
/* 80C6B084  38 03 B2 E0 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l /* 0x80C6B2E0@l */
/* 80C6B088  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6B08C  41 82 00 10 */	beq lbl_80C6B09C
/* 80C6B090  3C 60 80 C7 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80C6B2EC@ha */
/* 80C6B094  38 03 B2 EC */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80C6B2EC@l */
/* 80C6B098  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C6B09C:
/* 80C6B09C  7C 80 07 35 */	extsh. r0, r4
/* 80C6B0A0  40 81 00 0C */	ble lbl_80C6B0AC
/* 80C6B0A4  7F E3 FB 78 */	mr r3, r31
/* 80C6B0A8  4B 66 3C 95 */	bl __dl__FPv
lbl_80C6B0AC:
/* 80C6B0AC  7F E3 FB 78 */	mr r3, r31
/* 80C6B0B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6B0B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6B0B8  7C 08 03 A6 */	mtlr r0
/* 80C6B0BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6B0C0  4E 80 00 20 */	blr 
