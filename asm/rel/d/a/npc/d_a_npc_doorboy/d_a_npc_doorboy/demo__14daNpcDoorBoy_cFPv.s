lbl_809AC528:
/* 809AC528  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809AC52C  7C 08 02 A6 */	mflr r0
/* 809AC530  90 01 00 34 */	stw r0, 0x34(r1)
/* 809AC534  39 61 00 30 */	addi r11, r1, 0x30
/* 809AC538  4B 9B 5C 9C */	b _savegpr_27
/* 809AC53C  7C 7F 1B 78 */	mr r31, r3
/* 809AC540  3C 80 80 9B */	lis r4, cNullVec__6Z2Calc@ha
/* 809AC544  3B A4 DB 28 */	addi r29, r4, cNullVec__6Z2Calc@l
/* 809AC548  A0 03 0E 04 */	lhz r0, 0xe04(r3)
/* 809AC54C  2C 00 00 02 */	cmpwi r0, 2
/* 809AC550  41 82 00 44 */	beq lbl_809AC594
/* 809AC554  40 80 01 84 */	bge lbl_809AC6D8
/* 809AC558  2C 00 00 00 */	cmpwi r0, 0
/* 809AC55C  41 82 00 0C */	beq lbl_809AC568
/* 809AC560  48 00 01 78 */	b lbl_809AC6D8
/* 809AC564  48 00 01 74 */	b lbl_809AC6D8
lbl_809AC568:
/* 809AC568  38 80 00 00 */	li r4, 0
/* 809AC56C  3C A0 80 9B */	lis r5, lit_4321@ha
/* 809AC570  C0 25 DA 2C */	lfs f1, lit_4321@l(r5)
/* 809AC574  38 A0 00 00 */	li r5, 0
/* 809AC578  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809AC57C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809AC580  7D 89 03 A6 */	mtctr r12
/* 809AC584  4E 80 04 21 */	bctrl 
/* 809AC588  38 00 00 02 */	li r0, 2
/* 809AC58C  B0 1F 0E 04 */	sth r0, 0xe04(r31)
/* 809AC590  48 00 01 48 */	b lbl_809AC6D8
lbl_809AC594:
/* 809AC594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809AC598  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 809AC59C  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 809AC5A0  28 00 00 00 */	cmplwi r0, 0
/* 809AC5A4  41 82 01 34 */	beq lbl_809AC6D8
/* 809AC5A8  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 809AC5AC  28 00 00 01 */	cmplwi r0, 1
/* 809AC5B0  41 82 01 28 */	beq lbl_809AC6D8
/* 809AC5B4  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 809AC5B8  7F 83 E3 78 */	mr r3, r28
/* 809AC5BC  80 9D 00 80 */	lwz r4, 0x80(r29)
/* 809AC5C0  38 A0 00 00 */	li r5, 0
/* 809AC5C4  38 C0 00 00 */	li r6, 0
/* 809AC5C8  4B 69 B5 54 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809AC5CC  2C 03 FF FF */	cmpwi r3, -1
/* 809AC5D0  41 82 00 40 */	beq lbl_809AC610
/* 809AC5D4  7C 7B 1B 78 */	mr r27, r3
/* 809AC5D8  93 7F 09 2C */	stw r27, 0x92c(r31)
/* 809AC5DC  7F E3 FB 78 */	mr r3, r31
/* 809AC5E0  7F 64 DB 78 */	mr r4, r27
/* 809AC5E4  A0 1F 09 E6 */	lhz r0, 0x9e6(r31)
/* 809AC5E8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 809AC5EC  39 9D 00 84 */	addi r12, r29, 0x84
/* 809AC5F0  7D 8C 02 14 */	add r12, r12, r0
/* 809AC5F4  4B 9B 5A 90 */	b __ptmf_scall
/* 809AC5F8  60 00 00 00 */	nop 
/* 809AC5FC  2C 03 00 00 */	cmpwi r3, 0
/* 809AC600  41 82 00 10 */	beq lbl_809AC610
/* 809AC604  7F 83 E3 78 */	mr r3, r28
/* 809AC608  7F 64 DB 78 */	mr r4, r27
/* 809AC60C  4B 69 BB 70 */	b cutEnd__16dEvent_manager_cFi
lbl_809AC610:
/* 809AC610  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 809AC614  28 00 00 02 */	cmplwi r0, 2
/* 809AC618  40 82 00 C0 */	bne lbl_809AC6D8
/* 809AC61C  A8 9F 09 D4 */	lha r4, 0x9d4(r31)
/* 809AC620  2C 04 FF FF */	cmpwi r4, -1
/* 809AC624  41 82 00 B4 */	beq lbl_809AC6D8
/* 809AC628  7F 83 E3 78 */	mr r3, r28
/* 809AC62C  4B 69 B4 4C */	b endCheck__16dEvent_manager_cFs
/* 809AC630  2C 03 00 00 */	cmpwi r3, 0
/* 809AC634  41 82 00 A4 */	beq lbl_809AC6D8
/* 809AC638  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 809AC63C  4B 69 5E 2C */	b reset__14dEvt_control_cFv
/* 809AC640  38 00 00 00 */	li r0, 0
/* 809AC644  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 809AC648  38 00 FF FF */	li r0, -1
/* 809AC64C  B0 1F 09 D4 */	sth r0, 0x9d4(r31)
/* 809AC650  80 7D 00 E4 */	lwz r3, 0xe4(r29)
/* 809AC654  80 1D 00 E8 */	lwz r0, 0xe8(r29)
/* 809AC658  90 61 00 08 */	stw r3, 8(r1)
/* 809AC65C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809AC660  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 809AC664  90 01 00 10 */	stw r0, 0x10(r1)
/* 809AC668  38 00 00 03 */	li r0, 3
/* 809AC66C  B0 1F 0E 04 */	sth r0, 0xe04(r31)
/* 809AC670  38 7F 0D D4 */	addi r3, r31, 0xdd4
/* 809AC674  4B 9B 59 A4 */	b __ptmf_test
/* 809AC678  2C 03 00 00 */	cmpwi r3, 0
/* 809AC67C  41 82 00 18 */	beq lbl_809AC694
/* 809AC680  7F E3 FB 78 */	mr r3, r31
/* 809AC684  38 80 00 00 */	li r4, 0
/* 809AC688  39 9F 0D D4 */	addi r12, r31, 0xdd4
/* 809AC68C  4B 9B 59 F8 */	b __ptmf_scall
/* 809AC690  60 00 00 00 */	nop 
lbl_809AC694:
/* 809AC694  38 00 00 00 */	li r0, 0
/* 809AC698  B0 1F 0E 04 */	sth r0, 0xe04(r31)
/* 809AC69C  80 61 00 08 */	lwz r3, 8(r1)
/* 809AC6A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809AC6A4  90 7F 0D D4 */	stw r3, 0xdd4(r31)
/* 809AC6A8  90 1F 0D D8 */	stw r0, 0xdd8(r31)
/* 809AC6AC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 809AC6B0  90 1F 0D DC */	stw r0, 0xddc(r31)
/* 809AC6B4  38 7F 0D D4 */	addi r3, r31, 0xdd4
/* 809AC6B8  4B 9B 59 60 */	b __ptmf_test
/* 809AC6BC  2C 03 00 00 */	cmpwi r3, 0
/* 809AC6C0  41 82 00 18 */	beq lbl_809AC6D8
/* 809AC6C4  7F E3 FB 78 */	mr r3, r31
/* 809AC6C8  38 80 00 00 */	li r4, 0
/* 809AC6CC  39 9F 0D D4 */	addi r12, r31, 0xdd4
/* 809AC6D0  4B 9B 59 B4 */	b __ptmf_scall
/* 809AC6D4  60 00 00 00 */	nop 
lbl_809AC6D8:
/* 809AC6D8  38 60 00 01 */	li r3, 1
/* 809AC6DC  39 61 00 30 */	addi r11, r1, 0x30
/* 809AC6E0  4B 9B 5B 40 */	b _restgpr_27
/* 809AC6E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809AC6E8  7C 08 03 A6 */	mtlr r0
/* 809AC6EC  38 21 00 30 */	addi r1, r1, 0x30
/* 809AC6F0  4E 80 00 20 */	blr 
