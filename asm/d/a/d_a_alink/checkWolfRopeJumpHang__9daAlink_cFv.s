lbl_80131628:
/* 80131628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013162C  7C 08 02 A6 */	mflr r0
/* 80131630  90 01 00 14 */	stw r0, 0x14(r1)
/* 80131634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80131638  7C 7F 1B 78 */	mr r31, r3
/* 8013163C  38 9F 08 50 */	addi r4, r31, 0x850
/* 80131640  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80131644  38 C0 00 01 */	li r6, 1
/* 80131648  4B FF FE 09 */	bl checkWolfRopeHit__9daAlink_cCFP12dCcD_GObjInfPC4cXyzi
/* 8013164C  7C 64 1B 79 */	or. r4, r3, r3
/* 80131650  40 82 00 1C */	bne lbl_8013166C
/* 80131654  7F E3 FB 78 */	mr r3, r31
/* 80131658  38 9F 0F B8 */	addi r4, r31, 0xfb8
/* 8013165C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80131660  38 C0 00 01 */	li r6, 1
/* 80131664  4B FF FD ED */	bl checkWolfRopeHit__9daAlink_cCFP12dCcD_GObjInfPC4cXyzi
/* 80131668  7C 64 1B 78 */	mr r4, r3
lbl_8013166C:
/* 8013166C  28 04 00 00 */	cmplwi r4, 0
/* 80131670  41 82 00 1C */	beq lbl_8013168C
/* 80131674  38 7F 28 0C */	addi r3, r31, 0x280c
/* 80131678  48 02 D6 41 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8013167C  7F E3 FB 78 */	mr r3, r31
/* 80131680  38 80 00 04 */	li r4, 4
/* 80131684  48 00 10 B5 */	bl procWolfRopeHangInit__9daAlink_cFi
/* 80131688  48 00 00 08 */	b lbl_80131690
lbl_8013168C:
/* 8013168C  38 60 00 00 */	li r3, 0
lbl_80131690:
/* 80131690  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80131694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80131698  7C 08 03 A6 */	mtlr r0
/* 8013169C  38 21 00 10 */	addi r1, r1, 0x10
/* 801316A0  4E 80 00 20 */	blr 
