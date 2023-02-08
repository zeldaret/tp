lbl_80B968E0:
/* 80B968E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B968E4  7C 08 02 A6 */	mflr r0
/* 80B968E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B968EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B968F0  7C 7F 1B 78 */	mr r31, r3
/* 80B968F4  2C 04 00 00 */	cmpwi r4, 0
/* 80B968F8  41 82 00 5C */	beq lbl_80B96954
/* 80B968FC  38 9F 12 C4 */	addi r4, r31, 0x12c4
/* 80B96900  38 A0 00 01 */	li r5, 1
/* 80B96904  38 C0 00 00 */	li r6, 0
/* 80B96908  4B 5B CC 71 */	bl hitChk2__8daNpcF_cFP8dCcD_Cylii
/* 80B9690C  2C 03 00 00 */	cmpwi r3, 0
/* 80B96910  41 82 00 44 */	beq lbl_80B96954
/* 80B96914  7F E3 FB 78 */	mr r3, r31
/* 80B96918  80 1F 09 30 */	lwz r0, 0x930(r31)
/* 80B9691C  2C 00 00 08 */	cmpwi r0, 8
/* 80B96920  40 82 00 0C */	bne lbl_80B9692C
/* 80B96924  38 80 00 14 */	li r4, 0x14
/* 80B96928  48 00 00 10 */	b lbl_80B96938
lbl_80B9692C:
/* 80B9692C  3C 80 80 BA */	lis r4, m__17daNpc_zrZ_Param_c@ha /* 0x80B9AFEC@ha */
/* 80B96930  38 84 AF EC */	addi r4, r4, m__17daNpc_zrZ_Param_c@l /* 0x80B9AFEC@l */
/* 80B96934  A8 84 00 62 */	lha r4, 0x62(r4)
lbl_80B96938:
/* 80B96938  38 A0 00 01 */	li r5, 1
/* 80B9693C  38 C0 00 00 */	li r6, 0
/* 80B96940  4B 5B CD 19 */	bl setDamage__8daNpcF_cFiii
/* 80B96944  7F E3 FB 78 */	mr r3, r31
/* 80B96948  38 80 00 01 */	li r4, 1
/* 80B9694C  48 00 05 31 */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B96950  48 00 00 28 */	b lbl_80B96978
lbl_80B96954:
/* 80B96954  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 80B96958  28 00 00 00 */	cmplwi r0, 0
/* 80B9695C  41 82 00 1C */	beq lbl_80B96978
/* 80B96960  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 80B96964  2C 00 00 00 */	cmpwi r0, 0
/* 80B96968  40 82 00 10 */	bne lbl_80B96978
/* 80B9696C  38 00 00 00 */	li r0, 0
/* 80B96970  B0 1F 14 4A */	sth r0, 0x144a(r31)
/* 80B96974  98 1F 09 F0 */	stb r0, 0x9f0(r31)
lbl_80B96978:
/* 80B96978  38 00 00 00 */	li r0, 0
/* 80B9697C  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80B96980  38 7F 14 00 */	addi r3, r31, 0x1400
/* 80B96984  4B 7C B6 95 */	bl __ptmf_test
/* 80B96988  2C 03 00 00 */	cmpwi r3, 0
/* 80B9698C  41 82 00 54 */	beq lbl_80B969E0
/* 80B96990  38 7F 14 0C */	addi r3, r31, 0x140c
/* 80B96994  38 9F 14 00 */	addi r4, r31, 0x1400
/* 80B96998  4B 7C B6 B1 */	bl __ptmf_cmpr
/* 80B9699C  2C 03 00 00 */	cmpwi r3, 0
/* 80B969A0  40 82 00 1C */	bne lbl_80B969BC
/* 80B969A4  7F E3 FB 78 */	mr r3, r31
/* 80B969A8  38 80 00 00 */	li r4, 0
/* 80B969AC  39 9F 14 0C */	addi r12, r31, 0x140c
/* 80B969B0  4B 7C B6 D5 */	bl __ptmf_scall
/* 80B969B4  60 00 00 00 */	nop 
/* 80B969B8  48 00 00 28 */	b lbl_80B969E0
lbl_80B969BC:
/* 80B969BC  80 7F 14 00 */	lwz r3, 0x1400(r31)
/* 80B969C0  80 1F 14 04 */	lwz r0, 0x1404(r31)
/* 80B969C4  90 61 00 08 */	stw r3, 8(r1)
/* 80B969C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B969CC  80 1F 14 08 */	lwz r0, 0x1408(r31)
/* 80B969D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B969D4  7F E3 FB 78 */	mr r3, r31
/* 80B969D8  38 81 00 08 */	addi r4, r1, 8
/* 80B969DC  4B FF FD 91 */	bl setAction__11daNpc_zrZ_cFM11daNpc_zrZ_cFPCvPvPv_i
lbl_80B969E0:
/* 80B969E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B969E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B969E8  7C 08 03 A6 */	mtlr r0
/* 80B969EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80B969F0  4E 80 00 20 */	blr 
