lbl_80709C3C:
/* 80709C3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80709C40  7C 08 02 A6 */	mflr r0
/* 80709C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80709C48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80709C4C  7C 7F 1B 78 */	mr r31, r3
/* 80709C50  80 03 05 B0 */	lwz r0, 0x5b0(r3)
/* 80709C54  2C 00 00 01 */	cmpwi r0, 1
/* 80709C58  41 82 00 60 */	beq lbl_80709CB8
/* 80709C5C  40 80 00 10 */	bge lbl_80709C6C
/* 80709C60  2C 00 00 00 */	cmpwi r0, 0
/* 80709C64  40 80 00 10 */	bge lbl_80709C74
/* 80709C68  48 00 00 80 */	b lbl_80709CE8
lbl_80709C6C:
/* 80709C6C  2C 00 00 03 */	cmpwi r0, 3
/* 80709C70  40 80 00 78 */	bge lbl_80709CE8
lbl_80709C74:
/* 80709C74  7F E3 FB 78 */	mr r3, r31
/* 80709C78  4B FF FE 45 */	bl DummyAction__8daE_MD_cFv
/* 80709C7C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80709C80  7C 03 07 74 */	extsb r3, r0
/* 80709C84  4B 92 33 E9 */	bl dComIfGp_getReverb__Fi
/* 80709C88  7C 65 1B 78 */	mr r5, r3
/* 80709C8C  80 7F 06 8C */	lwz r3, 0x68c(r31)
/* 80709C90  38 80 00 00 */	li r4, 0
/* 80709C94  4B 90 74 1D */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80709C98  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80709C9C  7C 03 07 74 */	extsb r3, r0
/* 80709CA0  4B 92 33 CD */	bl dComIfGp_getReverb__Fi
/* 80709CA4  7C 65 1B 78 */	mr r5, r3
/* 80709CA8  80 7F 06 90 */	lwz r3, 0x690(r31)
/* 80709CAC  38 80 00 00 */	li r4, 0
/* 80709CB0  4B 90 74 01 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80709CB4  48 00 00 34 */	b lbl_80709CE8
lbl_80709CB8:
/* 80709CB8  4B FF FE FD */	bl RealAction__8daE_MD_cFv
/* 80709CBC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80709CC0  7C 03 07 74 */	extsb r3, r0
/* 80709CC4  4B 92 33 A9 */	bl dComIfGp_getReverb__Fi
/* 80709CC8  7C 65 1B 78 */	mr r5, r3
/* 80709CCC  80 7F 06 8C */	lwz r3, 0x68c(r31)
/* 80709CD0  38 80 00 00 */	li r4, 0
/* 80709CD4  4B 90 73 DD */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80709CD8  7F E3 FB 78 */	mr r3, r31
/* 80709CDC  3C 80 80 71 */	lis r4, lit_4064@ha /* 0x8070A54C@ha */
/* 80709CE0  C0 24 A5 4C */	lfs f1, lit_4064@l(r4)  /* 0x8070A54C@l */
/* 80709CE4  4B FF F1 8D */	bl setCcCylinder__8daE_MD_cFf
lbl_80709CE8:
/* 80709CE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80709CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80709CF0  7C 08 03 A6 */	mtlr r0
/* 80709CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80709CF8  4E 80 00 20 */	blr 
