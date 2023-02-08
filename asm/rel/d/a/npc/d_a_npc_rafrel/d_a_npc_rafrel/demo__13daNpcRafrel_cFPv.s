lbl_80ABC50C:
/* 80ABC50C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80ABC510  7C 08 02 A6 */	mflr r0
/* 80ABC514  90 01 00 74 */	stw r0, 0x74(r1)
/* 80ABC518  39 61 00 70 */	addi r11, r1, 0x70
/* 80ABC51C  4B 8A 5C B9 */	bl _savegpr_27
/* 80ABC520  7C 7E 1B 78 */	mr r30, r3
/* 80ABC524  3C 80 80 AC */	lis r4, cNullVec__6Z2Calc@ha /* 0x80ABFE80@ha */
/* 80ABC528  3B E4 FE 80 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80ABFE80@l */
/* 80ABC52C  A0 03 0E 10 */	lhz r0, 0xe10(r3)
/* 80ABC530  2C 00 00 02 */	cmpwi r0, 2
/* 80ABC534  41 82 00 60 */	beq lbl_80ABC594
/* 80ABC538  40 80 04 EC */	bge lbl_80ABCA24
/* 80ABC53C  2C 00 00 00 */	cmpwi r0, 0
/* 80ABC540  41 82 00 0C */	beq lbl_80ABC54C
/* 80ABC544  48 00 04 E0 */	b lbl_80ABCA24
/* 80ABC548  48 00 04 DC */	b lbl_80ABCA24
lbl_80ABC54C:
/* 80ABC54C  38 80 00 07 */	li r4, 7
/* 80ABC550  3C A0 80 AC */	lis r5, lit_5080@ha /* 0x80ABFD30@ha */
/* 80ABC554  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)  /* 0x80ABFD30@l */
/* 80ABC558  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80ABC55C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABC560  7D 89 03 A6 */	mtctr r12
/* 80ABC564  4E 80 04 21 */	bctrl 
/* 80ABC568  7F C3 F3 78 */	mr r3, r30
/* 80ABC56C  38 80 00 00 */	li r4, 0
/* 80ABC570  3C A0 80 AC */	lis r5, lit_5080@ha /* 0x80ABFD30@ha */
/* 80ABC574  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)  /* 0x80ABFD30@l */
/* 80ABC578  38 A0 00 00 */	li r5, 0
/* 80ABC57C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80ABC580  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABC584  7D 89 03 A6 */	mtctr r12
/* 80ABC588  4E 80 04 21 */	bctrl 
/* 80ABC58C  38 00 00 02 */	li r0, 2
/* 80ABC590  B0 1E 0E 10 */	sth r0, 0xe10(r30)
lbl_80ABC594:
/* 80ABC594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ABC598  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ABC59C  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 80ABC5A0  28 00 00 00 */	cmplwi r0, 0
/* 80ABC5A4  41 82 02 A8 */	beq lbl_80ABC84C
/* 80ABC5A8  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80ABC5AC  28 00 00 01 */	cmplwi r0, 1
/* 80ABC5B0  41 82 02 9C */	beq lbl_80ABC84C
/* 80ABC5B4  3B 9D 4F F8 */	addi r28, r29, 0x4ff8
/* 80ABC5B8  7F 83 E3 78 */	mr r3, r28
/* 80ABC5BC  80 9F 02 44 */	lwz r4, 0x244(r31)
/* 80ABC5C0  38 A0 00 00 */	li r5, 0
/* 80ABC5C4  38 C0 00 00 */	li r6, 0
/* 80ABC5C8  4B 58 B5 55 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80ABC5CC  2C 03 FF FF */	cmpwi r3, -1
/* 80ABC5D0  41 82 00 70 */	beq lbl_80ABC640
/* 80ABC5D4  7C 7B 1B 78 */	mr r27, r3
/* 80ABC5D8  93 7E 09 2C */	stw r27, 0x92c(r30)
/* 80ABC5DC  7F 83 E3 78 */	mr r3, r28
/* 80ABC5E0  7F 64 DB 78 */	mr r4, r27
/* 80ABC5E4  38 BF 02 28 */	addi r5, r31, 0x228
/* 80ABC5E8  38 C0 00 07 */	li r6, 7
/* 80ABC5EC  38 E0 00 00 */	li r7, 0
/* 80ABC5F0  39 00 00 00 */	li r8, 0
/* 80ABC5F4  4B 58 B8 1D */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80ABC5F8  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC5FC  40 81 00 10 */	ble lbl_80ABC60C
/* 80ABC600  2C 03 00 07 */	cmpwi r3, 7
/* 80ABC604  40 80 00 08 */	bge lbl_80ABC60C
/* 80ABC608  B0 7E 09 E6 */	sth r3, 0x9e6(r30)
lbl_80ABC60C:
/* 80ABC60C  7F C3 F3 78 */	mr r3, r30
/* 80ABC610  7F 64 DB 78 */	mr r4, r27
/* 80ABC614  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80ABC618  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80ABC61C  39 9F 02 90 */	addi r12, r31, 0x290
/* 80ABC620  7D 8C 02 14 */	add r12, r12, r0
/* 80ABC624  4B 8A 5A 61 */	bl __ptmf_scall
/* 80ABC628  60 00 00 00 */	nop 
/* 80ABC62C  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC630  41 82 00 10 */	beq lbl_80ABC640
/* 80ABC634  7F 83 E3 78 */	mr r3, r28
/* 80ABC638  7F 64 DB 78 */	mr r4, r27
/* 80ABC63C  4B 58 BB 41 */	bl cutEnd__16dEvent_manager_cFi
lbl_80ABC640:
/* 80ABC640  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80ABC644  28 00 00 02 */	cmplwi r0, 2
/* 80ABC648  40 82 03 DC */	bne lbl_80ABCA24
/* 80ABC64C  A8 9E 09 D4 */	lha r4, 0x9d4(r30)
/* 80ABC650  2C 04 FF FF */	cmpwi r4, -1
/* 80ABC654  41 82 03 D0 */	beq lbl_80ABCA24
/* 80ABC658  7F 83 E3 78 */	mr r3, r28
/* 80ABC65C  4B 58 B4 1D */	bl endCheck__16dEvent_manager_cFs
/* 80ABC660  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC664  41 82 03 C0 */	beq lbl_80ABCA24
/* 80ABC668  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80ABC66C  4B 58 5D FD */	bl reset__14dEvt_control_cFv
/* 80ABC670  38 00 00 00 */	li r0, 0
/* 80ABC674  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80ABC678  38 00 FF FF */	li r0, -1
/* 80ABC67C  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 80ABC680  88 1E 0E 17 */	lbz r0, 0xe17(r30)
/* 80ABC684  2C 00 00 01 */	cmpwi r0, 1
/* 80ABC688  41 82 00 AC */	beq lbl_80ABC734
/* 80ABC68C  40 80 00 10 */	bge lbl_80ABC69C
/* 80ABC690  2C 00 00 00 */	cmpwi r0, 0
/* 80ABC694  40 80 00 14 */	bge lbl_80ABC6A8
/* 80ABC698  48 00 03 8C */	b lbl_80ABCA24
lbl_80ABC69C:
/* 80ABC69C  2C 00 00 03 */	cmpwi r0, 3
/* 80ABC6A0  40 80 03 84 */	bge lbl_80ABCA24
/* 80ABC6A4  48 00 01 1C */	b lbl_80ABC7C0
lbl_80ABC6A8:
/* 80ABC6A8  80 7F 03 04 */	lwz r3, 0x304(r31)
/* 80ABC6AC  80 1F 03 08 */	lwz r0, 0x308(r31)
/* 80ABC6B0  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80ABC6B4  90 01 00 30 */	stw r0, 0x30(r1)
/* 80ABC6B8  80 1F 03 0C */	lwz r0, 0x30c(r31)
/* 80ABC6BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ABC6C0  38 00 00 03 */	li r0, 3
/* 80ABC6C4  B0 1E 0E 10 */	sth r0, 0xe10(r30)
/* 80ABC6C8  38 7E 0D E0 */	addi r3, r30, 0xde0
/* 80ABC6CC  4B 8A 59 4D */	bl __ptmf_test
/* 80ABC6D0  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC6D4  41 82 00 18 */	beq lbl_80ABC6EC
/* 80ABC6D8  7F C3 F3 78 */	mr r3, r30
/* 80ABC6DC  38 80 00 00 */	li r4, 0
/* 80ABC6E0  39 9E 0D E0 */	addi r12, r30, 0xde0
/* 80ABC6E4  4B 8A 59 A1 */	bl __ptmf_scall
/* 80ABC6E8  60 00 00 00 */	nop 
lbl_80ABC6EC:
/* 80ABC6EC  38 00 00 00 */	li r0, 0
/* 80ABC6F0  B0 1E 0E 10 */	sth r0, 0xe10(r30)
/* 80ABC6F4  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80ABC6F8  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80ABC6FC  90 7E 0D E0 */	stw r3, 0xde0(r30)
/* 80ABC700  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 80ABC704  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ABC708  90 1E 0D E8 */	stw r0, 0xde8(r30)
/* 80ABC70C  38 7E 0D E0 */	addi r3, r30, 0xde0
/* 80ABC710  4B 8A 59 09 */	bl __ptmf_test
/* 80ABC714  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC718  41 82 03 0C */	beq lbl_80ABCA24
/* 80ABC71C  7F C3 F3 78 */	mr r3, r30
/* 80ABC720  38 80 00 00 */	li r4, 0
/* 80ABC724  39 9E 0D E0 */	addi r12, r30, 0xde0
/* 80ABC728  4B 8A 59 5D */	bl __ptmf_scall
/* 80ABC72C  60 00 00 00 */	nop 
/* 80ABC730  48 00 02 F4 */	b lbl_80ABCA24
lbl_80ABC734:
/* 80ABC734  80 7F 03 10 */	lwz r3, 0x310(r31)
/* 80ABC738  80 1F 03 14 */	lwz r0, 0x314(r31)
/* 80ABC73C  90 61 00 38 */	stw r3, 0x38(r1)
/* 80ABC740  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80ABC744  80 1F 03 18 */	lwz r0, 0x318(r31)
/* 80ABC748  90 01 00 40 */	stw r0, 0x40(r1)
/* 80ABC74C  38 00 00 03 */	li r0, 3
/* 80ABC750  B0 1E 0E 10 */	sth r0, 0xe10(r30)
/* 80ABC754  38 7E 0D E0 */	addi r3, r30, 0xde0
/* 80ABC758  4B 8A 58 C1 */	bl __ptmf_test
/* 80ABC75C  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC760  41 82 00 18 */	beq lbl_80ABC778
/* 80ABC764  7F C3 F3 78 */	mr r3, r30
/* 80ABC768  38 80 00 00 */	li r4, 0
/* 80ABC76C  39 9E 0D E0 */	addi r12, r30, 0xde0
/* 80ABC770  4B 8A 59 15 */	bl __ptmf_scall
/* 80ABC774  60 00 00 00 */	nop 
lbl_80ABC778:
/* 80ABC778  38 00 00 00 */	li r0, 0
/* 80ABC77C  B0 1E 0E 10 */	sth r0, 0xe10(r30)
/* 80ABC780  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80ABC784  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80ABC788  90 7E 0D E0 */	stw r3, 0xde0(r30)
/* 80ABC78C  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 80ABC790  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80ABC794  90 1E 0D E8 */	stw r0, 0xde8(r30)
/* 80ABC798  38 7E 0D E0 */	addi r3, r30, 0xde0
/* 80ABC79C  4B 8A 58 7D */	bl __ptmf_test
/* 80ABC7A0  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC7A4  41 82 02 80 */	beq lbl_80ABCA24
/* 80ABC7A8  7F C3 F3 78 */	mr r3, r30
/* 80ABC7AC  38 80 00 00 */	li r4, 0
/* 80ABC7B0  39 9E 0D E0 */	addi r12, r30, 0xde0
/* 80ABC7B4  4B 8A 58 D1 */	bl __ptmf_scall
/* 80ABC7B8  60 00 00 00 */	nop 
/* 80ABC7BC  48 00 02 68 */	b lbl_80ABCA24
lbl_80ABC7C0:
/* 80ABC7C0  80 7F 03 1C */	lwz r3, 0x31c(r31)
/* 80ABC7C4  80 1F 03 20 */	lwz r0, 0x320(r31)
/* 80ABC7C8  90 61 00 44 */	stw r3, 0x44(r1)
/* 80ABC7CC  90 01 00 48 */	stw r0, 0x48(r1)
/* 80ABC7D0  80 1F 03 24 */	lwz r0, 0x324(r31)
/* 80ABC7D4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80ABC7D8  38 00 00 03 */	li r0, 3
/* 80ABC7DC  B0 1E 0E 10 */	sth r0, 0xe10(r30)
/* 80ABC7E0  38 7E 0D E0 */	addi r3, r30, 0xde0
/* 80ABC7E4  4B 8A 58 35 */	bl __ptmf_test
/* 80ABC7E8  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC7EC  41 82 00 18 */	beq lbl_80ABC804
/* 80ABC7F0  7F C3 F3 78 */	mr r3, r30
/* 80ABC7F4  38 80 00 00 */	li r4, 0
/* 80ABC7F8  39 9E 0D E0 */	addi r12, r30, 0xde0
/* 80ABC7FC  4B 8A 58 89 */	bl __ptmf_scall
/* 80ABC800  60 00 00 00 */	nop 
lbl_80ABC804:
/* 80ABC804  38 00 00 00 */	li r0, 0
/* 80ABC808  B0 1E 0E 10 */	sth r0, 0xe10(r30)
/* 80ABC80C  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80ABC810  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80ABC814  90 7E 0D E0 */	stw r3, 0xde0(r30)
/* 80ABC818  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 80ABC81C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80ABC820  90 1E 0D E8 */	stw r0, 0xde8(r30)
/* 80ABC824  38 7E 0D E0 */	addi r3, r30, 0xde0
/* 80ABC828  4B 8A 57 F1 */	bl __ptmf_test
/* 80ABC82C  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC830  41 82 01 F4 */	beq lbl_80ABCA24
/* 80ABC834  7F C3 F3 78 */	mr r3, r30
/* 80ABC838  38 80 00 00 */	li r4, 0
/* 80ABC83C  39 9E 0D E0 */	addi r12, r30, 0xde0
/* 80ABC840  4B 8A 58 45 */	bl __ptmf_scall
/* 80ABC844  60 00 00 00 */	nop 
/* 80ABC848  48 00 01 DC */	b lbl_80ABCA24
lbl_80ABC84C:
/* 80ABC84C  38 00 00 00 */	li r0, 0
/* 80ABC850  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80ABC854  38 00 FF FF */	li r0, -1
/* 80ABC858  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 80ABC85C  88 1E 0E 17 */	lbz r0, 0xe17(r30)
/* 80ABC860  2C 00 00 01 */	cmpwi r0, 1
/* 80ABC864  41 82 00 AC */	beq lbl_80ABC910
/* 80ABC868  40 80 00 10 */	bge lbl_80ABC878
/* 80ABC86C  2C 00 00 00 */	cmpwi r0, 0
/* 80ABC870  40 80 00 14 */	bge lbl_80ABC884
/* 80ABC874  48 00 01 B0 */	b lbl_80ABCA24
lbl_80ABC878:
/* 80ABC878  2C 00 00 03 */	cmpwi r0, 3
/* 80ABC87C  40 80 01 A8 */	bge lbl_80ABCA24
/* 80ABC880  48 00 01 1C */	b lbl_80ABC99C
lbl_80ABC884:
/* 80ABC884  80 7F 03 04 */	lwz r3, 0x304(r31)
/* 80ABC888  80 1F 03 08 */	lwz r0, 0x308(r31)
/* 80ABC88C  90 61 00 08 */	stw r3, 8(r1)
/* 80ABC890  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ABC894  80 1F 03 0C */	lwz r0, 0x30c(r31)
/* 80ABC898  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ABC89C  38 00 00 03 */	li r0, 3
/* 80ABC8A0  B0 1E 0E 10 */	sth r0, 0xe10(r30)
/* 80ABC8A4  38 7E 0D E0 */	addi r3, r30, 0xde0
/* 80ABC8A8  4B 8A 57 71 */	bl __ptmf_test
/* 80ABC8AC  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC8B0  41 82 00 18 */	beq lbl_80ABC8C8
/* 80ABC8B4  7F C3 F3 78 */	mr r3, r30
/* 80ABC8B8  38 80 00 00 */	li r4, 0
/* 80ABC8BC  39 9E 0D E0 */	addi r12, r30, 0xde0
/* 80ABC8C0  4B 8A 57 C5 */	bl __ptmf_scall
/* 80ABC8C4  60 00 00 00 */	nop 
lbl_80ABC8C8:
/* 80ABC8C8  38 00 00 00 */	li r0, 0
/* 80ABC8CC  B0 1E 0E 10 */	sth r0, 0xe10(r30)
/* 80ABC8D0  80 61 00 08 */	lwz r3, 8(r1)
/* 80ABC8D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80ABC8D8  90 7E 0D E0 */	stw r3, 0xde0(r30)
/* 80ABC8DC  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 80ABC8E0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80ABC8E4  90 1E 0D E8 */	stw r0, 0xde8(r30)
/* 80ABC8E8  38 7E 0D E0 */	addi r3, r30, 0xde0
/* 80ABC8EC  4B 8A 57 2D */	bl __ptmf_test
/* 80ABC8F0  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC8F4  41 82 01 30 */	beq lbl_80ABCA24
/* 80ABC8F8  7F C3 F3 78 */	mr r3, r30
/* 80ABC8FC  38 80 00 00 */	li r4, 0
/* 80ABC900  39 9E 0D E0 */	addi r12, r30, 0xde0
/* 80ABC904  4B 8A 57 81 */	bl __ptmf_scall
/* 80ABC908  60 00 00 00 */	nop 
/* 80ABC90C  48 00 01 18 */	b lbl_80ABCA24
lbl_80ABC910:
/* 80ABC910  80 7F 03 10 */	lwz r3, 0x310(r31)
/* 80ABC914  80 1F 03 14 */	lwz r0, 0x314(r31)
/* 80ABC918  90 61 00 14 */	stw r3, 0x14(r1)
/* 80ABC91C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ABC920  80 1F 03 18 */	lwz r0, 0x318(r31)
/* 80ABC924  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ABC928  38 00 00 03 */	li r0, 3
/* 80ABC92C  B0 1E 0E 10 */	sth r0, 0xe10(r30)
/* 80ABC930  38 7E 0D E0 */	addi r3, r30, 0xde0
/* 80ABC934  4B 8A 56 E5 */	bl __ptmf_test
/* 80ABC938  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC93C  41 82 00 18 */	beq lbl_80ABC954
/* 80ABC940  7F C3 F3 78 */	mr r3, r30
/* 80ABC944  38 80 00 00 */	li r4, 0
/* 80ABC948  39 9E 0D E0 */	addi r12, r30, 0xde0
/* 80ABC94C  4B 8A 57 39 */	bl __ptmf_scall
/* 80ABC950  60 00 00 00 */	nop 
lbl_80ABC954:
/* 80ABC954  38 00 00 00 */	li r0, 0
/* 80ABC958  B0 1E 0E 10 */	sth r0, 0xe10(r30)
/* 80ABC95C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80ABC960  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80ABC964  90 7E 0D E0 */	stw r3, 0xde0(r30)
/* 80ABC968  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 80ABC96C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80ABC970  90 1E 0D E8 */	stw r0, 0xde8(r30)
/* 80ABC974  38 7E 0D E0 */	addi r3, r30, 0xde0
/* 80ABC978  4B 8A 56 A1 */	bl __ptmf_test
/* 80ABC97C  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC980  41 82 00 A4 */	beq lbl_80ABCA24
/* 80ABC984  7F C3 F3 78 */	mr r3, r30
/* 80ABC988  38 80 00 00 */	li r4, 0
/* 80ABC98C  39 9E 0D E0 */	addi r12, r30, 0xde0
/* 80ABC990  4B 8A 56 F5 */	bl __ptmf_scall
/* 80ABC994  60 00 00 00 */	nop 
/* 80ABC998  48 00 00 8C */	b lbl_80ABCA24
lbl_80ABC99C:
/* 80ABC99C  80 7F 03 1C */	lwz r3, 0x31c(r31)
/* 80ABC9A0  80 1F 03 20 */	lwz r0, 0x320(r31)
/* 80ABC9A4  90 61 00 20 */	stw r3, 0x20(r1)
/* 80ABC9A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ABC9AC  80 1F 03 24 */	lwz r0, 0x324(r31)
/* 80ABC9B0  90 01 00 28 */	stw r0, 0x28(r1)
/* 80ABC9B4  38 00 00 03 */	li r0, 3
/* 80ABC9B8  B0 1E 0E 10 */	sth r0, 0xe10(r30)
/* 80ABC9BC  38 7E 0D E0 */	addi r3, r30, 0xde0
/* 80ABC9C0  4B 8A 56 59 */	bl __ptmf_test
/* 80ABC9C4  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC9C8  41 82 00 18 */	beq lbl_80ABC9E0
/* 80ABC9CC  7F C3 F3 78 */	mr r3, r30
/* 80ABC9D0  38 80 00 00 */	li r4, 0
/* 80ABC9D4  39 9E 0D E0 */	addi r12, r30, 0xde0
/* 80ABC9D8  4B 8A 56 AD */	bl __ptmf_scall
/* 80ABC9DC  60 00 00 00 */	nop 
lbl_80ABC9E0:
/* 80ABC9E0  38 00 00 00 */	li r0, 0
/* 80ABC9E4  B0 1E 0E 10 */	sth r0, 0xe10(r30)
/* 80ABC9E8  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80ABC9EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ABC9F0  90 7E 0D E0 */	stw r3, 0xde0(r30)
/* 80ABC9F4  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 80ABC9F8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80ABC9FC  90 1E 0D E8 */	stw r0, 0xde8(r30)
/* 80ABCA00  38 7E 0D E0 */	addi r3, r30, 0xde0
/* 80ABCA04  4B 8A 56 15 */	bl __ptmf_test
/* 80ABCA08  2C 03 00 00 */	cmpwi r3, 0
/* 80ABCA0C  41 82 00 18 */	beq lbl_80ABCA24
/* 80ABCA10  7F C3 F3 78 */	mr r3, r30
/* 80ABCA14  38 80 00 00 */	li r4, 0
/* 80ABCA18  39 9E 0D E0 */	addi r12, r30, 0xde0
/* 80ABCA1C  4B 8A 56 69 */	bl __ptmf_scall
/* 80ABCA20  60 00 00 00 */	nop 
lbl_80ABCA24:
/* 80ABCA24  38 60 00 01 */	li r3, 1
/* 80ABCA28  39 61 00 70 */	addi r11, r1, 0x70
/* 80ABCA2C  4B 8A 57 F5 */	bl _restgpr_27
/* 80ABCA30  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80ABCA34  7C 08 03 A6 */	mtlr r0
/* 80ABCA38  38 21 00 70 */	addi r1, r1, 0x70
/* 80ABCA3C  4E 80 00 20 */	blr 
