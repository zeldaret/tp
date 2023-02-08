lbl_80AD6720:
/* 80AD6720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD6724  7C 08 02 A6 */	mflr r0
/* 80AD6728  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD672C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD6730  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD6734  7C 7E 1B 78 */	mr r30, r3
/* 80AD6738  80 63 0E 60 */	lwz r3, 0xe60(r3)
/* 80AD673C  2C 03 00 00 */	cmpwi r3, 0
/* 80AD6740  41 82 00 24 */	beq lbl_80AD6764
/* 80AD6744  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80AD6748  2C 00 00 00 */	cmpwi r0, 0
/* 80AD674C  40 82 00 18 */	bne lbl_80AD6764
/* 80AD6750  A0 1E 0E 1E */	lhz r0, 0xe1e(r30)
/* 80AD6754  7C 03 00 00 */	cmpw r3, r0
/* 80AD6758  41 81 00 0C */	bgt lbl_80AD6764
/* 80AD675C  38 00 00 00 */	li r0, 0
/* 80AD6760  90 1E 0E 60 */	stw r0, 0xe60(r30)
lbl_80AD6764:
/* 80AD6764  80 1E 0E 60 */	lwz r0, 0xe60(r30)
/* 80AD6768  2C 00 00 00 */	cmpwi r0, 0
/* 80AD676C  40 82 00 84 */	bne lbl_80AD67F0
/* 80AD6770  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80AD6774  2C 00 00 01 */	cmpwi r0, 1
/* 80AD6778  40 82 00 50 */	bne lbl_80AD67C8
/* 80AD677C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80AD6780  4B 66 F2 A5 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80AD6784  2C 03 00 00 */	cmpwi r3, 0
/* 80AD6788  41 82 00 68 */	beq lbl_80AD67F0
/* 80AD678C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80AD6790  2C 00 00 00 */	cmpwi r0, 0
/* 80AD6794  41 82 00 28 */	beq lbl_80AD67BC
/* 80AD6798  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 80AD679C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80AD67A0  4B 66 F0 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD67A4  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 80AD67A8  38 00 00 00 */	li r0, 0
/* 80AD67AC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80AD67B0  3C 60 80 AD */	lis r3, lit_4348@ha /* 0x80AD7D54@ha */
/* 80AD67B4  C0 03 7D 54 */	lfs f0, lit_4348@l(r3)  /* 0x80AD7D54@l */
/* 80AD67B8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80AD67BC:
/* 80AD67BC  38 00 00 03 */	li r0, 3
/* 80AD67C0  90 1E 0E 60 */	stw r0, 0xe60(r30)
/* 80AD67C4  48 00 00 2C */	b lbl_80AD67F0
lbl_80AD67C8:
/* 80AD67C8  41 82 00 28 */	beq lbl_80AD67F0
/* 80AD67CC  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 80AD67D0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80AD67D4  4B 66 F0 C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD67D8  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 80AD67DC  38 00 00 01 */	li r0, 1
/* 80AD67E0  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80AD67E4  3C 60 80 AD */	lis r3, lit_4348@ha /* 0x80AD7D54@ha */
/* 80AD67E8  C0 03 7D 54 */	lfs f0, lit_4348@l(r3)  /* 0x80AD7D54@l */
/* 80AD67EC  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80AD67F0:
/* 80AD67F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD67F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD67F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD67FC  7C 08 03 A6 */	mtlr r0
/* 80AD6800  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD6804  4E 80 00 20 */	blr 
