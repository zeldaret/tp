lbl_8029EB20:
/* 8029EB20  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8029EB24  7C 08 02 A6 */	mflr r0
/* 8029EB28  3C C0 CC 00 */	lis r6, 0xCC00 /* 0xCC00500A@ha */
/* 8029EB2C  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 8029EB30  38 00 FF D7 */	li r0, -41
/* 8029EB34  38 61 00 08 */	addi r3, r1, 8
/* 8029EB38  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8029EB3C  7C 9F 23 78 */	mr r31, r4
/* 8029EB40  A0 A6 50 0A */	lhz r5, 0x500A(r6)  /* 0xCC00500A@l */
/* 8029EB44  54 A4 04 3E */	clrlwi r4, r5, 0x10
/* 8029EB48  7C 80 00 38 */	and r0, r4, r0
/* 8029EB4C  60 00 00 80 */	ori r0, r0, 0x80
/* 8029EB50  B0 06 50 0A */	sth r0, 0x500a(r6)
/* 8029EB54  48 09 D4 AD */	bl OSClearContext
/* 8029EB58  38 61 00 08 */	addi r3, r1, 8
/* 8029EB5C  48 09 D2 DD */	bl OSSetCurrentContext
/* 8029EB60  88 0D 8D 88 */	lbz r0, struct_80451308+0x0(r13)
/* 8029EB64  28 00 00 01 */	cmplwi r0, 1
/* 8029EB68  41 82 00 10 */	beq lbl_8029EB78
/* 8029EB6C  88 0D 8D 88 */	lbz r0, struct_80451308+0x0(r13)
/* 8029EB70  28 00 00 00 */	cmplwi r0, 0
/* 8029EB74  40 82 00 0C */	bne lbl_8029EB80
lbl_8029EB78:
/* 8029EB78  80 0D 8D 8C */	lwz r0, DSP_prior_task(r13)
/* 8029EB7C  90 0D 93 94 */	stw r0, __DSP_curr_task(r13)
lbl_8029EB80:
/* 8029EB80  48 0B 38 C1 */	bl DSPCheckMailFromDSP
/* 8029EB84  28 03 00 00 */	cmplwi r3, 0
/* 8029EB88  41 82 FF F8 */	beq lbl_8029EB80
/* 8029EB8C  48 0B 38 C5 */	bl DSPReadMailFromDSP
/* 8029EB90  80 AD 93 94 */	lwz r5, __DSP_curr_task(r13)
/* 8029EB94  80 05 00 08 */	lwz r0, 8(r5)
/* 8029EB98  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8029EB9C  41 82 00 18 */	beq lbl_8029EBB4
/* 8029EBA0  3C 03 23 2F */	addis r0, r3, 0x232f
/* 8029EBA4  28 00 00 02 */	cmplwi r0, 2
/* 8029EBA8  40 82 00 0C */	bne lbl_8029EBB4
/* 8029EBAC  3C 60 DC D1 */	lis r3, 0xDCD1 /* 0xDCD10003@ha */
/* 8029EBB0  38 63 00 03 */	addi r3, r3, 0x0003 /* 0xDCD10003@l */
lbl_8029EBB4:
/* 8029EBB4  3C 80 DC D1 */	lis r4, 0xDCD1 /* 0xDCD10003@ha */
/* 8029EBB8  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDCD10003@l */
/* 8029EBBC  7C 03 00 00 */	cmpw r3, r0
/* 8029EBC0  41 82 01 1C */	beq lbl_8029ECDC
/* 8029EBC4  40 80 00 20 */	bge lbl_8029EBE4
/* 8029EBC8  38 04 00 01 */	addi r0, r4, 1
/* 8029EBCC  7C 03 00 00 */	cmpw r3, r0
/* 8029EBD0  41 82 00 5C */	beq lbl_8029EC2C
/* 8029EBD4  40 80 00 94 */	bge lbl_8029EC68
/* 8029EBD8  7C 03 20 00 */	cmpw r3, r4
/* 8029EBDC  40 80 00 1C */	bge lbl_8029EBF8
/* 8029EBE0  48 00 02 20 */	b lbl_8029EE00
lbl_8029EBE4:
/* 8029EBE4  38 04 00 05 */	addi r0, r4, 5
/* 8029EBE8  7C 03 00 00 */	cmpw r3, r0
/* 8029EBEC  41 82 01 98 */	beq lbl_8029ED84
/* 8029EBF0  40 80 02 10 */	bge lbl_8029EE00
/* 8029EBF4  48 00 01 74 */	b lbl_8029ED68
lbl_8029EBF8:
/* 8029EBF8  38 80 00 01 */	li r4, 1
/* 8029EBFC  90 85 00 00 */	stw r4, 0(r5)
/* 8029EC00  80 6D 93 94 */	lwz r3, __DSP_curr_task(r13)
/* 8029EC04  80 0D 8D 8C */	lwz r0, DSP_prior_task(r13)
/* 8029EC08  7C 03 00 40 */	cmplw r3, r0
/* 8029EC0C  40 82 00 08 */	bne lbl_8029EC14
/* 8029EC10  98 8D 8D 88 */	stb r4, struct_80451308+0x0(r13)
lbl_8029EC14:
/* 8029EC14  81 83 00 28 */	lwz r12, 0x28(r3)
/* 8029EC18  28 0C 00 00 */	cmplwi r12, 0
/* 8029EC1C  41 82 01 E4 */	beq lbl_8029EE00
/* 8029EC20  7D 89 03 A6 */	mtctr r12
/* 8029EC24  4E 80 04 21 */	bctrl 
/* 8029EC28  48 00 01 D8 */	b lbl_8029EE00
lbl_8029EC2C:
/* 8029EC2C  38 80 00 01 */	li r4, 1
/* 8029EC30  90 85 00 00 */	stw r4, 0(r5)
/* 8029EC34  80 6D 93 94 */	lwz r3, __DSP_curr_task(r13)
/* 8029EC38  80 0D 8D 8C */	lwz r0, DSP_prior_task(r13)
/* 8029EC3C  7C 03 00 40 */	cmplw r3, r0
/* 8029EC40  40 82 00 0C */	bne lbl_8029EC4C
/* 8029EC44  98 8D 8D 88 */	stb r4, struct_80451308+0x0(r13)
/* 8029EC48  48 00 02 B9 */	bl Dsp_Update_Request__Fv
lbl_8029EC4C:
/* 8029EC4C  80 6D 93 94 */	lwz r3, __DSP_curr_task(r13)
/* 8029EC50  81 83 00 2C */	lwz r12, 0x2c(r3)
/* 8029EC54  28 0C 00 00 */	cmplwi r12, 0
/* 8029EC58  41 82 01 A8 */	beq lbl_8029EE00
/* 8029EC5C  7D 89 03 A6 */	mtctr r12
/* 8029EC60  4E 80 04 21 */	bctrl 
/* 8029EC64  48 00 01 9C */	b lbl_8029EE00
lbl_8029EC68:
/* 8029EC68  3C 60 CD D1 */	lis r3, 0xCDD1 /* 0xCDD10001@ha */
/* 8029EC6C  38 63 00 01 */	addi r3, r3, 0x0001 /* 0xCDD10001@l */
/* 8029EC70  48 0B 37 F9 */	bl DSPSendMailToDSP
/* 8029EC74  60 00 00 00 */	nop 
lbl_8029EC78:
/* 8029EC78  48 0B 37 B9 */	bl DSPCheckMailToDSP
/* 8029EC7C  28 03 00 00 */	cmplwi r3, 0
/* 8029EC80  40 82 FF F8 */	bne lbl_8029EC78
/* 8029EC84  80 6D 93 94 */	lwz r3, __DSP_curr_task(r13)
/* 8029EC88  38 00 00 02 */	li r0, 2
/* 8029EC8C  90 03 00 00 */	stw r0, 0(r3)
/* 8029EC90  80 6D 93 94 */	lwz r3, __DSP_curr_task(r13)
/* 8029EC94  80 83 00 38 */	lwz r4, 0x38(r3)
/* 8029EC98  28 04 00 00 */	cmplwi r4, 0
/* 8029EC9C  40 82 00 2C */	bne lbl_8029ECC8
/* 8029ECA0  88 0D 8D 89 */	lbz r0, struct_80451308+0x1(r13)
/* 8029ECA4  28 00 00 00 */	cmplwi r0, 0
/* 8029ECA8  41 82 00 20 */	beq lbl_8029ECC8
/* 8029ECAC  80 8D 8D 8C */	lwz r4, DSP_prior_task(r13)
/* 8029ECB0  48 0B 39 21 */	bl __DSP_exec_task
/* 8029ECB4  80 0D 8D 8C */	lwz r0, DSP_prior_task(r13)
/* 8029ECB8  38 60 00 00 */	li r3, 0
/* 8029ECBC  98 6D 8D 89 */	stb r3, struct_80451308+0x1(r13)
/* 8029ECC0  90 0D 93 94 */	stw r0, __DSP_curr_task(r13)
/* 8029ECC4  48 00 01 3C */	b lbl_8029EE00
lbl_8029ECC8:
/* 8029ECC8  48 0B 39 09 */	bl __DSP_exec_task
/* 8029ECCC  80 6D 93 94 */	lwz r3, __DSP_curr_task(r13)
/* 8029ECD0  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8029ECD4  90 0D 93 94 */	stw r0, __DSP_curr_task(r13)
/* 8029ECD8  48 00 01 28 */	b lbl_8029EE00
lbl_8029ECDC:
/* 8029ECDC  81 85 00 30 */	lwz r12, 0x30(r5)
/* 8029ECE0  28 0C 00 00 */	cmplwi r12, 0
/* 8029ECE4  41 82 00 10 */	beq lbl_8029ECF4
/* 8029ECE8  7C A3 2B 78 */	mr r3, r5
/* 8029ECEC  7D 89 03 A6 */	mtctr r12
/* 8029ECF0  4E 80 04 21 */	bctrl 
lbl_8029ECF4:
/* 8029ECF4  3C 60 CD D1 */	lis r3, 0xCDD1 /* 0xCDD10001@ha */
/* 8029ECF8  38 63 00 01 */	addi r3, r3, 0x0001 /* 0xCDD10001@l */
/* 8029ECFC  48 0B 37 6D */	bl DSPSendMailToDSP
lbl_8029ED00:
/* 8029ED00  48 0B 37 31 */	bl DSPCheckMailToDSP
/* 8029ED04  28 03 00 00 */	cmplwi r3, 0
/* 8029ED08  40 82 FF F8 */	bne lbl_8029ED00
/* 8029ED0C  80 6D 93 94 */	lwz r3, __DSP_curr_task(r13)
/* 8029ED10  38 00 00 03 */	li r0, 3
/* 8029ED14  90 03 00 00 */	stw r0, 0(r3)
/* 8029ED18  80 6D 93 94 */	lwz r3, __DSP_curr_task(r13)
/* 8029ED1C  80 83 00 38 */	lwz r4, 0x38(r3)
/* 8029ED20  28 04 00 00 */	cmplwi r4, 0
/* 8029ED24  40 82 00 24 */	bne lbl_8029ED48
/* 8029ED28  80 8D 8D 8C */	lwz r4, DSP_prior_task(r13)
/* 8029ED2C  38 60 00 00 */	li r3, 0
/* 8029ED30  48 0B 38 A1 */	bl __DSP_exec_task
/* 8029ED34  80 6D 93 94 */	lwz r3, __DSP_curr_task(r13)
/* 8029ED38  48 0B 3C 65 */	bl __DSP_remove_task
/* 8029ED3C  80 0D 8D 8C */	lwz r0, DSP_prior_task(r13)
/* 8029ED40  90 0D 93 94 */	stw r0, __DSP_curr_task(r13)
/* 8029ED44  48 00 00 BC */	b lbl_8029EE00
lbl_8029ED48:
/* 8029ED48  38 60 00 00 */	li r3, 0
/* 8029ED4C  48 0B 38 85 */	bl __DSP_exec_task
/* 8029ED50  80 6D 93 94 */	lwz r3, __DSP_curr_task(r13)
/* 8029ED54  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8029ED58  90 6D 93 94 */	stw r3, __DSP_curr_task(r13)
/* 8029ED5C  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8029ED60  48 0B 3C 3D */	bl __DSP_remove_task
/* 8029ED64  48 00 00 9C */	b lbl_8029EE00
lbl_8029ED68:
/* 8029ED68  81 85 00 34 */	lwz r12, 0x34(r5)
/* 8029ED6C  28 0C 00 00 */	cmplwi r12, 0
/* 8029ED70  41 82 00 90 */	beq lbl_8029EE00
/* 8029ED74  7C A3 2B 78 */	mr r3, r5
/* 8029ED78  7D 89 03 A6 */	mtctr r12
/* 8029ED7C  4E 80 04 21 */	bctrl 
/* 8029ED80  48 00 00 80 */	b lbl_8029EE00
lbl_8029ED84:
/* 8029ED84  80 0D 93 90 */	lwz r0, __DSP_first_task(r13)
/* 8029ED88  28 00 00 00 */	cmplwi r0, 0
/* 8029ED8C  41 82 00 10 */	beq lbl_8029ED9C
/* 8029ED90  88 0D 8D 89 */	lbz r0, struct_80451308+0x1(r13)
/* 8029ED94  28 00 00 00 */	cmplwi r0, 0
/* 8029ED98  41 82 00 34 */	beq lbl_8029EDCC
lbl_8029ED9C:
/* 8029ED9C  3C 60 CD D1 */	lis r3, 0xCDD1 /* 0xCDD10003@ha */
/* 8029EDA0  38 63 00 03 */	addi r3, r3, 0x0003 /* 0xCDD10003@l */
/* 8029EDA4  48 0B 36 C5 */	bl DSPSendMailToDSP
lbl_8029EDA8:
/* 8029EDA8  48 0B 36 89 */	bl DSPCheckMailToDSP
/* 8029EDAC  28 03 00 00 */	cmplwi r3, 0
/* 8029EDB0  40 82 FF F8 */	bne lbl_8029EDA8
/* 8029EDB4  80 0D 8D 8C */	lwz r0, DSP_prior_task(r13)
/* 8029EDB8  38 60 00 00 */	li r3, 0
/* 8029EDBC  98 6D 8D 89 */	stb r3, struct_80451308+0x1(r13)
/* 8029EDC0  90 0D 93 94 */	stw r0, __DSP_curr_task(r13)
/* 8029EDC4  48 00 01 3D */	bl Dsp_Update_Request__Fv
/* 8029EDC8  48 00 00 38 */	b lbl_8029EE00
lbl_8029EDCC:
/* 8029EDCC  38 00 00 03 */	li r0, 3
/* 8029EDD0  3C 60 CD D1 */	lis r3, 0xCDD1 /* 0xCDD10001@ha */
/* 8029EDD4  98 0D 8D 88 */	stb r0, struct_80451308+0x0(r13)
/* 8029EDD8  38 63 00 01 */	addi r3, r3, 0x0001 /* 0xCDD10001@l */
/* 8029EDDC  48 0B 36 8D */	bl DSPSendMailToDSP
lbl_8029EDE0:
/* 8029EDE0  48 0B 36 51 */	bl DSPCheckMailToDSP
/* 8029EDE4  28 03 00 00 */	cmplwi r3, 0
/* 8029EDE8  40 82 FF F8 */	bne lbl_8029EDE0
/* 8029EDEC  80 6D 8D 8C */	lwz r3, DSP_prior_task(r13)
/* 8029EDF0  80 8D 93 90 */	lwz r4, __DSP_first_task(r13)
/* 8029EDF4  48 0B 37 DD */	bl __DSP_exec_task
/* 8029EDF8  80 0D 93 90 */	lwz r0, __DSP_first_task(r13)
/* 8029EDFC  90 0D 93 94 */	stw r0, __DSP_curr_task(r13)
lbl_8029EE00:
/* 8029EE00  38 61 00 08 */	addi r3, r1, 8
/* 8029EE04  48 09 D1 FD */	bl OSClearContext
/* 8029EE08  7F E3 FB 78 */	mr r3, r31
/* 8029EE0C  48 09 D0 2D */	bl OSSetCurrentContext
/* 8029EE10  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8029EE14  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8029EE18  7C 08 03 A6 */	mtlr r0
/* 8029EE1C  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8029EE20  4E 80 00 20 */	blr 
