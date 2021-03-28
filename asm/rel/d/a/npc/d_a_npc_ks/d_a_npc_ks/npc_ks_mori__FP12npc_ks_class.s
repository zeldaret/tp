lbl_80A58410:
/* 80A58410  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A58414  7C 08 02 A6 */	mflr r0
/* 80A58418  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A5841C  39 61 00 50 */	addi r11, r1, 0x50
/* 80A58420  4B 90 9D B0 */	b _savegpr_26
/* 80A58424  7C 7B 1B 78 */	mr r27, r3
/* 80A58428  3C 80 80 A6 */	lis r4, lit_4030@ha
/* 80A5842C  3B C4 DE FC */	addi r30, r4, lit_4030@l
/* 80A58430  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A58434  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80A58438  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80A5843C  3B 80 00 01 */	li r28, 1
/* 80A58440  80 A3 05 CC */	lwz r5, 0x5cc(r3)
/* 80A58444  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 80A58448  FC 00 00 1E */	fctiwz f0, f0
/* 80A5844C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A58450  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 80A58454  3C 80 80 A6 */	lis r4, l_HIO@ha
/* 80A58458  38 84 FE B8 */	addi r4, r4, l_HIO@l
/* 80A5845C  C0 64 00 30 */	lfs f3, 0x30(r4)
/* 80A58460  A8 03 05 EA */	lha r0, 0x5ea(r3)
/* 80A58464  2C 00 00 33 */	cmpwi r0, 0x33
/* 80A58468  41 82 09 50 */	beq lbl_80A58DB8
/* 80A5846C  40 80 00 70 */	bge lbl_80A584DC
/* 80A58470  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A58474  41 82 07 20 */	beq lbl_80A58B94
/* 80A58478  40 80 00 38 */	bge lbl_80A584B0
/* 80A5847C  2C 00 00 03 */	cmpwi r0, 3
/* 80A58480  41 82 05 28 */	beq lbl_80A589A8
/* 80A58484  40 80 00 1C */	bge lbl_80A584A0
/* 80A58488  2C 00 00 01 */	cmpwi r0, 1
/* 80A5848C  41 82 03 24 */	beq lbl_80A587B0
/* 80A58490  40 80 03 D0 */	bge lbl_80A58860
/* 80A58494  2C 00 00 00 */	cmpwi r0, 0
/* 80A58498  40 80 00 A8 */	bge lbl_80A58540
/* 80A5849C  48 00 0A 1C */	b lbl_80A58EB8
lbl_80A584A0:
/* 80A584A0  2C 00 00 05 */	cmpwi r0, 5
/* 80A584A4  41 82 06 7C */	beq lbl_80A58B20
/* 80A584A8  40 80 0A 10 */	bge lbl_80A58EB8
/* 80A584AC  48 00 05 60 */	b lbl_80A58A0C
lbl_80A584B0:
/* 80A584B0  2C 00 00 29 */	cmpwi r0, 0x29
/* 80A584B4  41 82 08 30 */	beq lbl_80A58CE4
/* 80A584B8  40 80 00 18 */	bge lbl_80A584D0
/* 80A584BC  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A584C0  40 80 07 E4 */	bge lbl_80A58CA4
/* 80A584C4  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A584C8  40 80 09 F0 */	bge lbl_80A58EB8
/* 80A584CC  48 00 07 08 */	b lbl_80A58BD4
lbl_80A584D0:
/* 80A584D0  2C 00 00 32 */	cmpwi r0, 0x32
/* 80A584D4  40 80 08 C4 */	bge lbl_80A58D98
/* 80A584D8  48 00 09 E0 */	b lbl_80A58EB8
lbl_80A584DC:
/* 80A584DC  2C 00 00 E7 */	cmpwi r0, 0xe7
/* 80A584E0  41 82 04 50 */	beq lbl_80A58930
/* 80A584E4  40 80 00 30 */	bge lbl_80A58514
/* 80A584E8  2C 00 00 64 */	cmpwi r0, 0x64
/* 80A584EC  41 82 09 74 */	beq lbl_80A58E60
/* 80A584F0  40 80 00 10 */	bge lbl_80A58500
/* 80A584F4  2C 00 00 35 */	cmpwi r0, 0x35
/* 80A584F8  41 82 08 F8 */	beq lbl_80A58DF0
/* 80A584FC  48 00 09 BC */	b lbl_80A58EB8
lbl_80A58500:
/* 80A58500  2C 00 00 E6 */	cmpwi r0, 0xe6
/* 80A58504  40 80 03 E8 */	bge lbl_80A588EC
/* 80A58508  2C 00 00 66 */	cmpwi r0, 0x66
/* 80A5850C  40 80 09 AC */	bge lbl_80A58EB8
/* 80A58510  48 00 09 78 */	b lbl_80A58E88
lbl_80A58514:
/* 80A58514  2C 00 01 2D */	cmpwi r0, 0x12d
/* 80A58518  41 82 07 44 */	beq lbl_80A58C5C
/* 80A5851C  40 80 00 18 */	bge lbl_80A58534
/* 80A58520  2C 00 01 2C */	cmpwi r0, 0x12c
/* 80A58524  40 80 07 2C */	bge lbl_80A58C50
/* 80A58528  2C 00 00 E9 */	cmpwi r0, 0xe9
/* 80A5852C  40 80 09 8C */	bge lbl_80A58EB8
/* 80A58530  48 00 04 34 */	b lbl_80A58964
lbl_80A58534:
/* 80A58534  2C 00 01 2F */	cmpwi r0, 0x12f
/* 80A58538  40 80 09 80 */	bge lbl_80A58EB8
/* 80A5853C  48 00 07 4C */	b lbl_80A58C88
lbl_80A58540:
/* 80A58540  3B 5F 07 F0 */	addi r26, r31, 0x7f0
/* 80A58544  7F 43 D3 78 */	mr r3, r26
/* 80A58548  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80A5854C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80A58550  A0 84 01 C2 */	lhz r4, 0x1c2(r4)
/* 80A58554  4B 5D C4 68 */	b isEventBit__11dSv_event_cCFUs
/* 80A58558  2C 03 00 00 */	cmpwi r3, 0
/* 80A5855C  41 82 00 50 */	beq lbl_80A585AC
/* 80A58560  7F 43 D3 78 */	mr r3, r26
/* 80A58564  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80A58568  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80A5856C  A0 84 01 C4 */	lhz r4, 0x1c4(r4)
/* 80A58570  4B 5D C4 4C */	b isEventBit__11dSv_event_cCFUs
/* 80A58574  2C 03 00 00 */	cmpwi r3, 0
/* 80A58578  40 82 09 40 */	bne lbl_80A58EB8
/* 80A5857C  38 00 01 2E */	li r0, 0x12e
/* 80A58580  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58584  38 00 00 03 */	li r0, 3
/* 80A58588  98 1B 0C 17 */	stb r0, 0xc17(r27)
/* 80A5858C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A58590  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80A58594  A0 04 00 06 */	lhz r0, 6(r4)
/* 80A58598  80 64 5D D4 */	lwz r3, 0x5dd4(r4)
/* 80A5859C  7C 00 00 D0 */	neg r0, r0
/* 80A585A0  7C 03 02 14 */	add r0, r3, r0
/* 80A585A4  90 04 5D D4 */	stw r0, 0x5dd4(r4)
/* 80A585A8  48 00 09 10 */	b lbl_80A58EB8
lbl_80A585AC:
/* 80A585AC  38 00 00 01 */	li r0, 1
/* 80A585B0  98 1B 0A EC */	stb r0, 0xaec(r27)
/* 80A585B4  7F 43 D3 78 */	mr r3, r26
/* 80A585B8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80A585BC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80A585C0  A0 84 01 C0 */	lhz r4, 0x1c0(r4)
/* 80A585C4  4B 5D C3 F8 */	b isEventBit__11dSv_event_cCFUs
/* 80A585C8  2C 03 00 00 */	cmpwi r3, 0
/* 80A585CC  41 82 00 3C */	beq lbl_80A58608
/* 80A585D0  38 00 00 03 */	li r0, 3
/* 80A585D4  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A585D8  38 00 00 00 */	li r0, 0
/* 80A585DC  3C 60 80 A6 */	lis r3, call_pt@ha
/* 80A585E0  90 03 FE A4 */	stw r0, call_pt@l(r3)
/* 80A585E4  38 00 00 02 */	li r0, 2
/* 80A585E8  98 1B 0C 17 */	stb r0, 0xc17(r27)
/* 80A585EC  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80A585F0  3C 63 00 01 */	addis r3, r3, 1
/* 80A585F4  38 03 80 00 */	addi r0, r3, -32768
/* 80A585F8  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80A585FC  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80A58600  B0 1B 08 FE */	sth r0, 0x8fe(r27)
/* 80A58604  48 00 08 B4 */	b lbl_80A58EB8
lbl_80A58608:
/* 80A58608  C0 3E 01 54 */	lfs f1, 0x154(r30)
/* 80A5860C  C0 1B 04 AC */	lfs f0, 0x4ac(r27)
/* 80A58610  EC 01 00 2A */	fadds f0, f1, f0
/* 80A58614  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80A58618  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5861C  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80A58620  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A58624  38 80 00 01 */	li r4, 1
/* 80A58628  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A5862C  81 8C 01 B8 */	lwz r12, 0x1b8(r12)
/* 80A58630  7D 89 03 A6 */	mtctr r12
/* 80A58634  4E 80 04 21 */	bctrl 
/* 80A58638  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A5863C  40 82 00 40 */	bne lbl_80A5867C
/* 80A58640  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A58644  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A58648  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 80A5864C  7D 89 03 A6 */	mtctr r12
/* 80A58650  4E 80 04 21 */	bctrl 
/* 80A58654  28 03 00 00 */	cmplwi r3, 0
/* 80A58658  41 82 08 60 */	beq lbl_80A58EB8
/* 80A5865C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A58660  38 80 00 00 */	li r4, 0
/* 80A58664  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A58668  81 8C 01 CC */	lwz r12, 0x1cc(r12)
/* 80A5866C  7D 89 03 A6 */	mtctr r12
/* 80A58670  4E 80 04 21 */	bctrl 
/* 80A58674  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A58678  41 82 08 40 */	beq lbl_80A58EB8
lbl_80A5867C:
/* 80A5867C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80A58680  C0 1E 04 3C */	lfs f0, 0x43c(r30)
/* 80A58684  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A58688  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80A5868C  C0 1E 04 40 */	lfs f0, 0x440(r30)
/* 80A58690  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A58694  38 61 00 24 */	addi r3, r1, 0x24
/* 80A58698  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A5869C  7C 65 1B 78 */	mr r5, r3
/* 80A586A0  4B 8E EA 14 */	b PSVECSubtract
/* 80A586A4  38 61 00 24 */	addi r3, r1, 0x24
/* 80A586A8  4B 8E EA 90 */	b PSVECSquareMag
/* 80A586AC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A586B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A586B4  40 81 00 58 */	ble lbl_80A5870C
/* 80A586B8  FC 00 08 34 */	frsqrte f0, f1
/* 80A586BC  C8 9E 00 50 */	lfd f4, 0x50(r30)
/* 80A586C0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A586C4  C8 7E 00 58 */	lfd f3, 0x58(r30)
/* 80A586C8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A586CC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A586D0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A586D4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A586D8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A586DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A586E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A586E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A586E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A586EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A586F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A586F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A586F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A586FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A58700  FC 21 00 32 */	fmul f1, f1, f0
/* 80A58704  FC 20 08 18 */	frsp f1, f1
/* 80A58708  48 00 00 88 */	b lbl_80A58790
lbl_80A5870C:
/* 80A5870C  C8 1E 00 60 */	lfd f0, 0x60(r30)
/* 80A58710  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A58714  40 80 00 10 */	bge lbl_80A58724
/* 80A58718  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A5871C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A58720  48 00 00 70 */	b lbl_80A58790
lbl_80A58724:
/* 80A58724  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A58728  80 81 00 08 */	lwz r4, 8(r1)
/* 80A5872C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A58730  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A58734  7C 03 00 00 */	cmpw r3, r0
/* 80A58738  41 82 00 14 */	beq lbl_80A5874C
/* 80A5873C  40 80 00 40 */	bge lbl_80A5877C
/* 80A58740  2C 03 00 00 */	cmpwi r3, 0
/* 80A58744  41 82 00 20 */	beq lbl_80A58764
/* 80A58748  48 00 00 34 */	b lbl_80A5877C
lbl_80A5874C:
/* 80A5874C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A58750  41 82 00 0C */	beq lbl_80A5875C
/* 80A58754  38 00 00 01 */	li r0, 1
/* 80A58758  48 00 00 28 */	b lbl_80A58780
lbl_80A5875C:
/* 80A5875C  38 00 00 02 */	li r0, 2
/* 80A58760  48 00 00 20 */	b lbl_80A58780
lbl_80A58764:
/* 80A58764  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A58768  41 82 00 0C */	beq lbl_80A58774
/* 80A5876C  38 00 00 05 */	li r0, 5
/* 80A58770  48 00 00 10 */	b lbl_80A58780
lbl_80A58774:
/* 80A58774  38 00 00 03 */	li r0, 3
/* 80A58778  48 00 00 08 */	b lbl_80A58780
lbl_80A5877C:
/* 80A5877C  38 00 00 04 */	li r0, 4
lbl_80A58780:
/* 80A58780  2C 00 00 01 */	cmpwi r0, 1
/* 80A58784  40 82 00 0C */	bne lbl_80A58790
/* 80A58788  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A5878C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A58790:
/* 80A58790  C0 1E 04 44 */	lfs f0, 0x444(r30)
/* 80A58794  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A58798  40 80 07 20 */	bge lbl_80A58EB8
/* 80A5879C  38 00 00 01 */	li r0, 1
/* 80A587A0  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A587A4  38 00 00 0A */	li r0, 0xa
/* 80A587A8  B0 1B 05 F0 */	sth r0, 0x5f0(r27)
/* 80A587AC  48 00 07 0C */	b lbl_80A58EB8
lbl_80A587B0:
/* 80A587B0  C0 3E 01 54 */	lfs f1, 0x154(r30)
/* 80A587B4  C0 1B 04 AC */	lfs f0, 0x4ac(r27)
/* 80A587B8  EC 01 00 2A */	fadds f0, f1, f0
/* 80A587BC  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80A587C0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A587C4  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80A587C8  A8 1B 05 F0 */	lha r0, 0x5f0(r27)
/* 80A587CC  2C 00 00 01 */	cmpwi r0, 1
/* 80A587D0  40 82 06 E8 */	bne lbl_80A58EB8
/* 80A587D4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A587D8  38 80 00 01 */	li r4, 1
/* 80A587DC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A587E0  81 8C 01 B8 */	lwz r12, 0x1b8(r12)
/* 80A587E4  7D 89 03 A6 */	mtctr r12
/* 80A587E8  4E 80 04 21 */	bctrl 
/* 80A587EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A587F0  40 82 00 40 */	bne lbl_80A58830
/* 80A587F4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A587F8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A587FC  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 80A58800  7D 89 03 A6 */	mtctr r12
/* 80A58804  4E 80 04 21 */	bctrl 
/* 80A58808  28 03 00 00 */	cmplwi r3, 0
/* 80A5880C  41 82 00 48 */	beq lbl_80A58854
/* 80A58810  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A58814  38 80 00 00 */	li r4, 0
/* 80A58818  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A5881C  81 8C 01 CC */	lwz r12, 0x1cc(r12)
/* 80A58820  7D 89 03 A6 */	mtctr r12
/* 80A58824  4E 80 04 21 */	bctrl 
/* 80A58828  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A5882C  41 82 00 28 */	beq lbl_80A58854
lbl_80A58830:
/* 80A58830  38 00 00 C8 */	li r0, 0xc8
/* 80A58834  B0 1B 0B 42 */	sth r0, 0xb42(r27)
/* 80A58838  7F 63 DB 78 */	mr r3, r27
/* 80A5883C  38 80 00 2C */	li r4, 0x2c
/* 80A58840  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80A58844  38 A0 00 02 */	li r5, 2
/* 80A58848  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A5884C  4B FF 09 59 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A58850  48 00 06 68 */	b lbl_80A58EB8
lbl_80A58854:
/* 80A58854  38 00 00 00 */	li r0, 0
/* 80A58858  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A5885C  48 00 06 5C */	b lbl_80A58EB8
lbl_80A58860:
/* 80A58860  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A58864  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A58868  80 63 00 00 */	lwz r3, 0(r3)
/* 80A5886C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80A58870  4B 5B 3B 6C */	b mDoMtx_YrotS__FPA4_fs
/* 80A58874  C0 1B 0B B4 */	lfs f0, 0xbb4(r27)
/* 80A58878  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A5887C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A58880  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A58884  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A58888  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A5888C  38 61 00 24 */	addi r3, r1, 0x24
/* 80A58890  38 81 00 18 */	addi r4, r1, 0x18
/* 80A58894  4B 81 86 58 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A58898  38 61 00 0C */	addi r3, r1, 0xc
/* 80A5889C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A588A0  38 A1 00 18 */	addi r5, r1, 0x18
/* 80A588A4  4B 80 E2 40 */	b __pl__4cXyzCFRC3Vec
/* 80A588A8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A588AC  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80A588B0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A588B4  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80A588B8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A588BC  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 80A588C0  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80A588C4  38 03 C0 00 */	addi r0, r3, -16384
/* 80A588C8  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80A588CC  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80A588D0  B0 1B 08 FE */	sth r0, 0x8fe(r27)
/* 80A588D4  38 7B 0B B4 */	addi r3, r27, 0xbb4
/* 80A588D8  C0 3E 01 E0 */	lfs f1, 0x1e0(r30)
/* 80A588DC  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A588E0  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 80A588E4  4B 81 71 58 */	b cLib_addCalc2__FPffff
/* 80A588E8  48 00 05 D0 */	b lbl_80A58EB8
lbl_80A588EC:
/* 80A588EC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A588F0  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A588F4  A8 1B 05 F0 */	lha r0, 0x5f0(r27)
/* 80A588F8  2C 00 00 00 */	cmpwi r0, 0
/* 80A588FC  40 82 05 BC */	bne lbl_80A58EB8
/* 80A58900  38 00 00 E7 */	li r0, 0xe7
/* 80A58904  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58908  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5890C  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A58910  38 80 00 33 */	li r4, 0x33
/* 80A58914  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A58918  38 A0 00 02 */	li r5, 2
/* 80A5891C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A58920  4B FF 08 85 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A58924  38 00 00 1E */	li r0, 0x1e
/* 80A58928  B0 1B 05 F0 */	sth r0, 0x5f0(r27)
/* 80A5892C  48 00 05 8C */	b lbl_80A58EB8
lbl_80A58930:
/* 80A58930  A8 1B 05 F0 */	lha r0, 0x5f0(r27)
/* 80A58934  2C 00 00 00 */	cmpwi r0, 0
/* 80A58938  40 82 05 80 */	bne lbl_80A58EB8
/* 80A5893C  38 80 00 2C */	li r4, 0x2c
/* 80A58940  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80A58944  38 A0 00 02 */	li r5, 2
/* 80A58948  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A5894C  4B FF 08 59 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A58950  38 00 00 6E */	li r0, 0x6e
/* 80A58954  B0 1B 05 F0 */	sth r0, 0x5f0(r27)
/* 80A58958  38 00 00 E8 */	li r0, 0xe8
/* 80A5895C  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58960  48 00 05 58 */	b lbl_80A58EB8
lbl_80A58964:
/* 80A58964  A8 1B 05 F0 */	lha r0, 0x5f0(r27)
/* 80A58968  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A5896C  40 82 00 18 */	bne lbl_80A58984
/* 80A58970  38 80 00 33 */	li r4, 0x33
/* 80A58974  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A58978  38 A0 00 02 */	li r5, 2
/* 80A5897C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A58980  4B FF 08 25 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A58984:
/* 80A58984  A8 1B 05 F0 */	lha r0, 0x5f0(r27)
/* 80A58988  2C 00 00 00 */	cmpwi r0, 0
/* 80A5898C  40 82 05 2C */	bne lbl_80A58EB8
/* 80A58990  38 00 00 03 */	li r0, 3
/* 80A58994  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58998  38 00 00 01 */	li r0, 1
/* 80A5899C  3C 60 80 A6 */	lis r3, call_pt@ha
/* 80A589A0  90 03 FE A4 */	stw r0, call_pt@l(r3)
/* 80A589A4  48 00 05 14 */	b lbl_80A58EB8
lbl_80A589A8:
/* 80A589A8  4B FF F8 CD */	bl path_search__FP12npc_ks_class
/* 80A589AC  2C 03 00 00 */	cmpwi r3, 0
/* 80A589B0  41 82 05 08 */	beq lbl_80A58EB8
/* 80A589B4  7F 63 DB 78 */	mr r3, r27
/* 80A589B8  38 80 00 1C */	li r4, 0x1c
/* 80A589BC  C0 3E 04 48 */	lfs f1, 0x448(r30)
/* 80A589C0  38 A0 00 02 */	li r5, 2
/* 80A589C4  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A589C8  4B FF 07 DD */	bl anm_init__FP12npc_ks_classifUcf
/* 80A589CC  38 00 00 04 */	li r0, 4
/* 80A589D0  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A589D4  38 00 00 01 */	li r0, 1
/* 80A589D8  90 1B 09 04 */	stw r0, 0x904(r27)
/* 80A589DC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A589E0  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A589E4  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80A589E8  3C 60 80 A6 */	lis r3, l_HIO@ha
/* 80A589EC  38 63 FE B8 */	addi r3, r3, l_HIO@l
/* 80A589F0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80A589F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A589F8  FC 00 00 1E */	fctiwz f0, f0
/* 80A589FC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A58A00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A58A04  B0 1B 05 F6 */	sth r0, 0x5f6(r27)
/* 80A58A08  48 00 04 B0 */	b lbl_80A58EB8
lbl_80A58A0C:
/* 80A58A0C  80 DB 09 04 */	lwz r6, 0x904(r27)
/* 80A58A10  80 BB 0C 18 */	lwz r5, 0xc18(r27)
/* 80A58A14  A0 05 00 00 */	lhz r0, 0(r5)
/* 80A58A18  7C 06 00 00 */	cmpw r6, r0
/* 80A58A1C  41 80 00 2C */	blt lbl_80A58A48
/* 80A58A20  38 80 00 07 */	li r4, 7
/* 80A58A24  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A58A28  38 A0 00 02 */	li r5, 2
/* 80A58A2C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A58A30  4B FF 07 75 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A58A34  38 00 00 0B */	li r0, 0xb
/* 80A58A38  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58A3C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A58A40  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A58A44  48 00 04 74 */	b lbl_80A58EB8
lbl_80A58A48:
/* 80A58A48  C0 3B 05 C4 */	lfs f1, 0x5c4(r27)
/* 80A58A4C  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 80A58A50  EC 00 18 2A */	fadds f0, f0, f3
/* 80A58A54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A58A58  40 81 00 68 */	ble lbl_80A58AC0
/* 80A58A5C  3C 80 80 A6 */	lis r4, call_pt@ha
/* 80A58A60  80 04 FE A4 */	lwz r0, call_pt@l(r4)
/* 80A58A64  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A58A68  41 82 00 1C */	beq lbl_80A58A84
/* 80A58A6C  38 80 00 08 */	li r4, 8
/* 80A58A70  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A58A74  38 A0 00 02 */	li r5, 2
/* 80A58A78  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A58A7C  4B FF 07 29 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A58A80  48 00 00 18 */	b lbl_80A58A98
lbl_80A58A84:
/* 80A58A84  38 80 00 07 */	li r4, 7
/* 80A58A88  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A58A8C  38 A0 00 02 */	li r5, 2
/* 80A58A90  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A58A94  4B FF 07 11 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A58A98:
/* 80A58A98  3C 60 80 A6 */	lis r3, call_pt@ha
/* 80A58A9C  38 83 FE A4 */	addi r4, r3, call_pt@l
/* 80A58AA0  80 64 00 00 */	lwz r3, 0(r4)
/* 80A58AA4  38 03 00 01 */	addi r0, r3, 1
/* 80A58AA8  90 04 00 00 */	stw r0, 0(r4)
/* 80A58AAC  38 00 00 0A */	li r0, 0xa
/* 80A58AB0  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58AB4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A58AB8  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A58ABC  48 00 03 FC */	b lbl_80A58EB8
lbl_80A58AC0:
/* 80A58AC0  80 A5 00 08 */	lwz r5, 8(r5)
/* 80A58AC4  54 C0 20 36 */	slwi r0, r6, 4
/* 80A58AC8  7C A5 02 14 */	add r5, r5, r0
/* 80A58ACC  C0 05 00 04 */	lfs f0, 4(r5)
/* 80A58AD0  D0 1B 08 F0 */	stfs f0, 0x8f0(r27)
/* 80A58AD4  C0 05 00 08 */	lfs f0, 8(r5)
/* 80A58AD8  D0 1B 08 F4 */	stfs f0, 0x8f4(r27)
/* 80A58ADC  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80A58AE0  D0 1B 08 F8 */	stfs f0, 0x8f8(r27)
/* 80A58AE4  38 00 00 05 */	li r0, 5
/* 80A58AE8  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58AEC  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 80A58AF0  C0 1E 04 4C */	lfs f0, 0x44c(r30)
/* 80A58AF4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A58AF8  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A58AFC  80 1B 05 D0 */	lwz r0, 0x5d0(r27)
/* 80A58B00  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80A58B04  41 82 03 B4 */	beq lbl_80A58EB8
/* 80A58B08  38 80 00 1C */	li r4, 0x1c
/* 80A58B0C  C0 3E 04 48 */	lfs f1, 0x448(r30)
/* 80A58B10  38 A0 00 02 */	li r5, 2
/* 80A58B14  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A58B18  4B FF 06 8D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A58B1C  48 00 03 9C */	b lbl_80A58EB8
lbl_80A58B20:
/* 80A58B20  C0 3B 08 F0 */	lfs f1, 0x8f0(r27)
/* 80A58B24  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80A58B28  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A58B2C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A58B30  C0 5B 08 F8 */	lfs f2, 0x8f8(r27)
/* 80A58B34  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80A58B38  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A58B3C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80A58B40  4B 80 EB 34 */	b cM_atan2s__Fff
/* 80A58B44  B0 7B 08 FE */	sth r3, 0x8fe(r27)
/* 80A58B48  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A58B4C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A58B50  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80A58B54  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A58B58  EC 21 00 2A */	fadds f1, f1, f0
/* 80A58B5C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A58B60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A58B64  40 81 00 0C */	ble lbl_80A58B70
/* 80A58B68  FC 00 08 34 */	frsqrte f0, f1
/* 80A58B6C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A58B70:
/* 80A58B70  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A58B74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A58B78  40 80 03 40 */	bge lbl_80A58EB8
/* 80A58B7C  80 7B 09 04 */	lwz r3, 0x904(r27)
/* 80A58B80  38 03 00 01 */	addi r0, r3, 1
/* 80A58B84  90 1B 09 04 */	stw r0, 0x904(r27)
/* 80A58B88  38 00 00 04 */	li r0, 4
/* 80A58B8C  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58B90  48 00 03 28 */	b lbl_80A58EB8
lbl_80A58B94:
/* 80A58B94  80 1B 05 D0 */	lwz r0, 0x5d0(r27)
/* 80A58B98  2C 00 00 07 */	cmpwi r0, 7
/* 80A58B9C  40 82 00 10 */	bne lbl_80A58BAC
/* 80A58BA0  A8 1B 05 C8 */	lha r0, 0x5c8(r27)
/* 80A58BA4  B0 1B 08 FE */	sth r0, 0x8fe(r27)
/* 80A58BA8  48 00 00 14 */	b lbl_80A58BBC
lbl_80A58BAC:
/* 80A58BAC  A8 7B 05 C8 */	lha r3, 0x5c8(r27)
/* 80A58BB0  3C 63 00 01 */	addis r3, r3, 1
/* 80A58BB4  38 03 80 00 */	addi r0, r3, -32768
/* 80A58BB8  B0 1B 08 FE */	sth r0, 0x8fe(r27)
lbl_80A58BBC:
/* 80A58BBC  C0 1B 05 C4 */	lfs f0, 0x5c4(r27)
/* 80A58BC0  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80A58BC4  40 80 02 F4 */	bge lbl_80A58EB8
/* 80A58BC8  38 00 00 04 */	li r0, 4
/* 80A58BCC  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58BD0  48 00 02 E8 */	b lbl_80A58EB8
lbl_80A58BD4:
/* 80A58BD4  80 1B 05 D0 */	lwz r0, 0x5d0(r27)
/* 80A58BD8  2C 00 00 07 */	cmpwi r0, 7
/* 80A58BDC  40 82 00 0C */	bne lbl_80A58BE8
/* 80A58BE0  A8 1B 05 C8 */	lha r0, 0x5c8(r27)
/* 80A58BE4  B0 1B 08 FE */	sth r0, 0x8fe(r27)
lbl_80A58BE8:
/* 80A58BE8  C0 3E 04 50 */	lfs f1, 0x450(r30)
/* 80A58BEC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A58BF0  EC 41 00 28 */	fsubs f2, f1, f0
/* 80A58BF4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80A58BF8  C0 3E 04 54 */	lfs f1, 0x454(r30)
/* 80A58BFC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A58C00  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A58C04  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A58C08  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80A58C0C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A58C10  EC 21 00 2A */	fadds f1, f1, f0
/* 80A58C14  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A58C18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A58C1C  40 81 00 0C */	ble lbl_80A58C28
/* 80A58C20  FC 00 08 34 */	frsqrte f0, f1
/* 80A58C24  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A58C28:
/* 80A58C28  C0 1E 04 58 */	lfs f0, 0x458(r30)
/* 80A58C2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A58C30  41 80 00 10 */	blt lbl_80A58C40
/* 80A58C34  C0 1B 05 C4 */	lfs f0, 0x5c4(r27)
/* 80A58C38  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80A58C3C  40 80 02 7C */	bge lbl_80A58EB8
lbl_80A58C40:
/* 80A58C40  38 00 01 2C */	li r0, 0x12c
/* 80A58C44  B0 1B 0B 42 */	sth r0, 0xb42(r27)
/* 80A58C48  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58C4C  48 00 02 6C */	b lbl_80A58EB8
lbl_80A58C50:
/* 80A58C50  A8 1B 05 C8 */	lha r0, 0x5c8(r27)
/* 80A58C54  B0 1B 08 FE */	sth r0, 0x8fe(r27)
/* 80A58C58  48 00 02 60 */	b lbl_80A58EB8
lbl_80A58C5C:
/* 80A58C5C  C0 3E 04 5C */	lfs f1, 0x45c(r30)
/* 80A58C60  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80A58C64  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A58C68  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A58C6C  C0 5E 04 60 */	lfs f2, 0x460(r30)
/* 80A58C70  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80A58C74  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A58C78  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80A58C7C  4B 80 E9 F8 */	b cM_atan2s__Fff
/* 80A58C80  B0 7B 08 FE */	sth r3, 0x8fe(r27)
/* 80A58C84  48 00 02 34 */	b lbl_80A58EB8
lbl_80A58C88:
/* 80A58C88  C0 3E 01 54 */	lfs f1, 0x154(r30)
/* 80A58C8C  C0 1B 04 AC */	lfs f0, 0x4ac(r27)
/* 80A58C90  EC 01 00 2A */	fadds f0, f1, f0
/* 80A58C94  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80A58C98  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A58C9C  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80A58CA0  48 00 02 18 */	b lbl_80A58EB8
lbl_80A58CA4:
/* 80A58CA4  38 80 00 27 */	li r4, 0x27
/* 80A58CA8  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A58CAC  38 A0 00 02 */	li r5, 2
/* 80A58CB0  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A58CB4  4B FF 04 F1 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A58CB8  38 00 00 29 */	li r0, 0x29
/* 80A58CBC  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58CC0  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 80A58CC4  4B 80 EC 90 */	b cM_rndF__Ff
/* 80A58CC8  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A58CCC  EC 00 08 2A */	fadds f0, f0, f1
/* 80A58CD0  FC 00 00 1E */	fctiwz f0, f0
/* 80A58CD4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A58CD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A58CDC  B0 1B 05 F0 */	sth r0, 0x5f0(r27)
/* 80A58CE0  48 00 01 D8 */	b lbl_80A58EB8
lbl_80A58CE4:
/* 80A58CE4  80 1B 05 D0 */	lwz r0, 0x5d0(r27)
/* 80A58CE8  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A58CEC  41 82 00 2C */	beq lbl_80A58D18
/* 80A58CF0  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A58CF4  40 82 00 0C */	bne lbl_80A58D00
/* 80A58CF8  2C 06 00 07 */	cmpwi r6, 7
/* 80A58CFC  41 80 00 1C */	blt lbl_80A58D18
lbl_80A58D00:
/* 80A58D00  2C 06 00 28 */	cmpwi r6, 0x28
/* 80A58D04  40 81 00 0C */	ble lbl_80A58D10
/* 80A58D08  2C 06 00 30 */	cmpwi r6, 0x30
/* 80A58D0C  41 80 00 0C */	blt lbl_80A58D18
lbl_80A58D10:
/* 80A58D10  2C 06 00 41 */	cmpwi r6, 0x41
/* 80A58D14  40 81 00 0C */	ble lbl_80A58D20
lbl_80A58D18:
/* 80A58D18  38 00 00 04 */	li r0, 4
/* 80A58D1C  B0 1B 05 E0 */	sth r0, 0x5e0(r27)
lbl_80A58D20:
/* 80A58D20  A8 1B 05 F0 */	lha r0, 0x5f0(r27)
/* 80A58D24  2C 00 00 00 */	cmpwi r0, 0
/* 80A58D28  40 82 00 28 */	bne lbl_80A58D50
/* 80A58D2C  80 1B 05 D0 */	lwz r0, 0x5d0(r27)
/* 80A58D30  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A58D34  40 82 00 1C */	bne lbl_80A58D50
/* 80A58D38  7F 63 DB 78 */	mr r3, r27
/* 80A58D3C  38 80 00 2B */	li r4, 0x2b
/* 80A58D40  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A58D44  38 A0 00 00 */	li r5, 0
/* 80A58D48  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A58D4C  4B FF 04 59 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A58D50:
/* 80A58D50  80 1B 05 D0 */	lwz r0, 0x5d0(r27)
/* 80A58D54  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A58D58  40 82 01 60 */	bne lbl_80A58EB8
/* 80A58D5C  80 7B 05 CC */	lwz r3, 0x5cc(r27)
/* 80A58D60  38 80 00 01 */	li r4, 1
/* 80A58D64  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A58D68  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A58D6C  40 82 00 18 */	bne lbl_80A58D84
/* 80A58D70  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80A58D74  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A58D78  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A58D7C  41 82 00 08 */	beq lbl_80A58D84
/* 80A58D80  38 80 00 00 */	li r4, 0
lbl_80A58D84:
/* 80A58D84  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A58D88  41 82 01 30 */	beq lbl_80A58EB8
/* 80A58D8C  38 00 00 28 */	li r0, 0x28
/* 80A58D90  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58D94  48 00 01 24 */	b lbl_80A58EB8
lbl_80A58D98:
/* 80A58D98  38 80 00 2E */	li r4, 0x2e
/* 80A58D9C  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80A58DA0  38 A0 00 00 */	li r5, 0
/* 80A58DA4  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A58DA8  4B FF 03 FD */	bl anm_init__FP12npc_ks_classifUcf
/* 80A58DAC  38 00 00 33 */	li r0, 0x33
/* 80A58DB0  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58DB4  48 00 01 04 */	b lbl_80A58EB8
lbl_80A58DB8:
/* 80A58DB8  38 60 00 01 */	li r3, 1
/* 80A58DBC  88 05 00 11 */	lbz r0, 0x11(r5)
/* 80A58DC0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A58DC4  40 82 00 18 */	bne lbl_80A58DDC
/* 80A58DC8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80A58DCC  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 80A58DD0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A58DD4  41 82 00 08 */	beq lbl_80A58DDC
/* 80A58DD8  38 60 00 00 */	li r3, 0
lbl_80A58DDC:
/* 80A58DDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A58DE0  41 82 00 D8 */	beq lbl_80A58EB8
/* 80A58DE4  38 00 00 28 */	li r0, 0x28
/* 80A58DE8  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58DEC  48 00 00 CC */	b lbl_80A58EB8
lbl_80A58DF0:
/* 80A58DF0  A8 1B 05 F0 */	lha r0, 0x5f0(r27)
/* 80A58DF4  2C 00 00 00 */	cmpwi r0, 0
/* 80A58DF8  40 82 00 C0 */	bne lbl_80A58EB8
/* 80A58DFC  3C 80 80 A6 */	lis r4, call_pt@ha
/* 80A58E00  80 04 FE A4 */	lwz r0, call_pt@l(r4)
/* 80A58E04  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A58E08  41 82 00 1C */	beq lbl_80A58E24
/* 80A58E0C  38 80 00 08 */	li r4, 8
/* 80A58E10  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A58E14  38 A0 00 02 */	li r5, 2
/* 80A58E18  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A58E1C  4B FF 03 89 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A58E20  48 00 00 18 */	b lbl_80A58E38
lbl_80A58E24:
/* 80A58E24  38 80 00 07 */	li r4, 7
/* 80A58E28  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A58E2C  38 A0 00 02 */	li r5, 2
/* 80A58E30  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A58E34  4B FF 03 71 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A58E38:
/* 80A58E38  3C 60 80 A6 */	lis r3, call_pt@ha
/* 80A58E3C  38 83 FE A4 */	addi r4, r3, call_pt@l
/* 80A58E40  80 64 00 00 */	lwz r3, 0(r4)
/* 80A58E44  38 03 00 01 */	addi r0, r3, 1
/* 80A58E48  90 04 00 00 */	stw r0, 0(r4)
/* 80A58E4C  38 00 00 0A */	li r0, 0xa
/* 80A58E50  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58E54  38 00 00 00 */	li r0, 0
/* 80A58E58  B0 1B 05 F6 */	sth r0, 0x5f6(r27)
/* 80A58E5C  48 00 00 5C */	b lbl_80A58EB8
lbl_80A58E60:
/* 80A58E60  38 80 00 2C */	li r4, 0x2c
/* 80A58E64  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80A58E68  38 A0 00 02 */	li r5, 2
/* 80A58E6C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A58E70  4B FF 03 35 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A58E74  38 00 00 65 */	li r0, 0x65
/* 80A58E78  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58E7C  38 00 00 50 */	li r0, 0x50
/* 80A58E80  B0 1B 05 F0 */	sth r0, 0x5f0(r27)
/* 80A58E84  48 00 00 34 */	b lbl_80A58EB8
lbl_80A58E88:
/* 80A58E88  A8 1B 05 F0 */	lha r0, 0x5f0(r27)
/* 80A58E8C  2C 00 00 00 */	cmpwi r0, 0
/* 80A58E90  40 82 00 28 */	bne lbl_80A58EB8
/* 80A58E94  38 00 00 04 */	li r0, 4
/* 80A58E98  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58E9C  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80A58EA0  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 80A58EA4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A58EA8  FC 00 00 1E */	fctiwz f0, f0
/* 80A58EAC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A58EB0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A58EB4  B0 1B 05 F6 */	sth r0, 0x5f6(r27)
lbl_80A58EB8:
/* 80A58EB8  A8 1B 05 EA */	lha r0, 0x5ea(r27)
/* 80A58EBC  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A58EC0  41 82 00 3C */	beq lbl_80A58EFC
/* 80A58EC4  2C 00 00 03 */	cmpwi r0, 3
/* 80A58EC8  40 81 00 34 */	ble lbl_80A58EFC
/* 80A58ECC  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A58ED0  40 80 00 2C */	bge lbl_80A58EFC
/* 80A58ED4  A8 1B 05 F6 */	lha r0, 0x5f6(r27)
/* 80A58ED8  2C 00 00 00 */	cmpwi r0, 0
/* 80A58EDC  41 82 00 10 */	beq lbl_80A58EEC
/* 80A58EE0  4B 5D 6B 50 */	b dComIfGs_shake_kandelaar_check__Fv
/* 80A58EE4  2C 03 00 01 */	cmpwi r3, 1
/* 80A58EE8  40 82 00 14 */	bne lbl_80A58EFC
lbl_80A58EEC:
/* 80A58EEC  38 00 00 64 */	li r0, 0x64
/* 80A58EF0  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58EF4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A58EF8  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_80A58EFC:
/* 80A58EFC  A8 1B 05 EA */	lha r0, 0x5ea(r27)
/* 80A58F00  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A58F04  41 80 00 34 */	blt lbl_80A58F38
/* 80A58F08  2C 00 00 34 */	cmpwi r0, 0x34
/* 80A58F0C  41 81 00 2C */	bgt lbl_80A58F38
/* 80A58F10  7F 63 DB 78 */	mr r3, r27
/* 80A58F14  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80A58F18  4B FF 0F 85 */	bl enemy_check__FP12npc_ks_classf
/* 80A58F1C  28 03 00 00 */	cmplwi r3, 0
/* 80A58F20  40 82 00 6C */	bne lbl_80A58F8C
/* 80A58F24  38 00 00 35 */	li r0, 0x35
/* 80A58F28  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58F2C  38 00 00 1E */	li r0, 0x1e
/* 80A58F30  B0 1B 05 F0 */	sth r0, 0x5f0(r27)
/* 80A58F34  48 00 00 58 */	b lbl_80A58F8C
lbl_80A58F38:
/* 80A58F38  7F 63 DB 78 */	mr r3, r27
/* 80A58F3C  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80A58F40  4B FF 0F 39 */	bl enemy_view_check__FP12npc_ks_classf
/* 80A58F44  28 03 00 00 */	cmplwi r3, 0
/* 80A58F48  41 82 00 44 */	beq lbl_80A58F8C
/* 80A58F4C  38 00 00 32 */	li r0, 0x32
/* 80A58F50  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A58F54  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A58F58  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A58F5C  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 80A58F60  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80A58F64  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A58F68  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A58F6C  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80A58F70  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80A58F74  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A58F78  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80A58F7C  4B 80 E6 F8 */	b cM_atan2s__Fff
/* 80A58F80  3C 63 00 01 */	addis r3, r3, 1
/* 80A58F84  38 03 80 00 */	addi r0, r3, -32768
/* 80A58F88  B0 1B 08 FE */	sth r0, 0x8fe(r27)
lbl_80A58F8C:
/* 80A58F8C  38 7B 04 DE */	addi r3, r27, 0x4de
/* 80A58F90  A8 9B 08 FE */	lha r4, 0x8fe(r27)
/* 80A58F94  38 A0 00 02 */	li r5, 2
/* 80A58F98  38 C0 10 00 */	li r6, 0x1000
/* 80A58F9C  4B 81 76 6C */	b cLib_addCalcAngleS2__FPssss
/* 80A58FA0  A8 7B 08 FE */	lha r3, 0x8fe(r27)
/* 80A58FA4  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80A58FA8  7C 03 00 50 */	subf r0, r3, r0
/* 80A58FAC  7C 00 07 34 */	extsh r0, r0
/* 80A58FB0  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80A58FB4  41 81 00 0C */	bgt lbl_80A58FC0
/* 80A58FB8  2C 00 F0 00 */	cmpwi r0, -4096
/* 80A58FBC  40 80 00 08 */	bge lbl_80A58FC4
lbl_80A58FC0:
/* 80A58FC0  3B 80 00 00 */	li r28, 0
lbl_80A58FC4:
/* 80A58FC4  7F 83 E3 78 */	mr r3, r28
/* 80A58FC8  39 61 00 50 */	addi r11, r1, 0x50
/* 80A58FCC  4B 90 92 50 */	b _restgpr_26
/* 80A58FD0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A58FD4  7C 08 03 A6 */	mtlr r0
/* 80A58FD8  38 21 00 50 */	addi r1, r1, 0x50
/* 80A58FDC  4E 80 00 20 */	blr 
