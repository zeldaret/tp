lbl_80B3D584:
/* 80B3D584  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B3D588  7C 08 02 A6 */	mflr r0
/* 80B3D58C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B3D590  39 61 00 40 */	addi r11, r1, 0x40
/* 80B3D594  4B 82 4C 3D */	bl _savegpr_26
/* 80B3D598  7C 7B 1B 78 */	mr r27, r3
/* 80B3D59C  7C 9C 23 78 */	mr r28, r4
/* 80B3D5A0  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B3D5A4  3B C3 16 DC */	addi r30, r3, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B3D5A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3D5AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3D5B0  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80B3D5B4  7F A3 EB 78 */	mr r3, r29
/* 80B3D5B8  4B 50 A9 A5 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80B3D5BC  7C 7F 1B 78 */	mr r31, r3
/* 80B3D5C0  7F A3 EB 78 */	mr r3, r29
/* 80B3D5C4  7F 84 E3 78 */	mr r4, r28
/* 80B3D5C8  4B 50 A7 85 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B3D5CC  2C 03 00 00 */	cmpwi r3, 0
/* 80B3D5D0  41 82 00 D0 */	beq lbl_80B3D6A0
/* 80B3D5D4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80B3D5D8  3C 83 CF D0 */	addis r4, r3, 0xcfd0
/* 80B3D5DC  38 84 CF CF */	addi r4, r4, -12337
/* 80B3D5E0  28 04 00 08 */	cmplwi r4, 8
/* 80B3D5E4  41 81 00 BC */	bgt lbl_80B3D6A0
/* 80B3D5E8  3C 60 80 B4 */	lis r3, lit_10143@ha /* 0x80B42C9C@ha */
/* 80B3D5EC  38 63 2C 9C */	addi r3, r3, lit_10143@l /* 0x80B42C9C@l */
/* 80B3D5F0  54 84 10 3A */	slwi r4, r4, 2
/* 80B3D5F4  7C 03 20 2E */	lwzx r0, r3, r4
/* 80B3D5F8  7C 09 03 A6 */	mtctr r0
/* 80B3D5FC  4E 80 04 20 */	bctr 
lbl_80B3D600:
/* 80B3D600  A8 1B 0E 90 */	lha r0, 0xe90(r27)
/* 80B3D604  2C 00 00 03 */	cmpwi r0, 3
/* 80B3D608  41 82 00 0C */	beq lbl_80B3D614
/* 80B3D60C  38 00 00 03 */	li r0, 3
/* 80B3D610  B0 1B 0E 90 */	sth r0, 0xe90(r27)
lbl_80B3D614:
/* 80B3D614  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80B3D618  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3D61C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3D620  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B3D624  4B 61 30 99 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B3D628  48 00 00 78 */	b lbl_80B3D6A0
lbl_80B3D62C:
/* 80B3D62C  7F 63 DB 78 */	mr r3, r27
/* 80B3D630  38 80 00 02 */	li r4, 2
/* 80B3D634  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3D638  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3D63C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3D640  7D 89 03 A6 */	mtctr r12
/* 80B3D644  4E 80 04 21 */	bctrl 
/* 80B3D648  48 00 00 58 */	b lbl_80B3D6A0
lbl_80B3D64C:
/* 80B3D64C  7F 63 DB 78 */	mr r3, r27
/* 80B3D650  80 9B 0E 88 */	lwz r4, 0xe88(r27)
/* 80B3D654  38 A0 00 00 */	li r5, 0
/* 80B3D658  4B 61 66 C5 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B3D65C  38 00 00 00 */	li r0, 0
/* 80B3D660  90 1B 09 50 */	stw r0, 0x950(r27)
/* 80B3D664  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80B3D668  48 00 00 38 */	b lbl_80B3D6A0
lbl_80B3D66C:
/* 80B3D66C  7F 63 DB 78 */	mr r3, r27
/* 80B3D670  38 80 00 3E */	li r4, 0x3e
/* 80B3D674  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80B3D678  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3D67C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B3D680  7D 89 03 A6 */	mtctr r12
/* 80B3D684  4E 80 04 21 */	bctrl 
lbl_80B3D688:
/* 80B3D688  7F 63 DB 78 */	mr r3, r27
/* 80B3D68C  80 9B 0E 88 */	lwz r4, 0xe88(r27)
/* 80B3D690  38 A0 00 00 */	li r5, 0
/* 80B3D694  4B 61 66 89 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B3D698  38 00 00 00 */	li r0, 0
/* 80B3D69C  90 1B 09 50 */	stw r0, 0x950(r27)
lbl_80B3D6A0:
/* 80B3D6A0  83 5B 09 50 */	lwz r26, 0x950(r27)
/* 80B3D6A4  7F 63 DB 78 */	mr r3, r27
/* 80B3D6A8  38 81 00 0C */	addi r4, r1, 0xc
/* 80B3D6AC  38 A1 00 08 */	addi r5, r1, 8
/* 80B3D6B0  7F 66 DB 78 */	mr r6, r27
/* 80B3D6B4  38 E0 00 00 */	li r7, 0
/* 80B3D6B8  4B 61 60 61 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B3D6BC  2C 03 00 00 */	cmpwi r3, 0
/* 80B3D6C0  41 82 00 44 */	beq lbl_80B3D704
/* 80B3D6C4  7F 63 DB 78 */	mr r3, r27
/* 80B3D6C8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B3D6CC  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3D6D0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3D6D4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3D6D8  7D 89 03 A6 */	mtctr r12
/* 80B3D6DC  4E 80 04 21 */	bctrl 
/* 80B3D6E0  7F 63 DB 78 */	mr r3, r27
/* 80B3D6E4  80 81 00 08 */	lwz r4, 8(r1)
/* 80B3D6E8  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3D6EC  38 A0 00 00 */	li r5, 0
/* 80B3D6F0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3D6F4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3D6F8  7D 89 03 A6 */	mtctr r12
/* 80B3D6FC  4E 80 04 21 */	bctrl 
/* 80B3D700  48 00 00 90 */	b lbl_80B3D790
lbl_80B3D704:
/* 80B3D704  2C 1A 00 00 */	cmpwi r26, 0
/* 80B3D708  41 82 00 88 */	beq lbl_80B3D790
/* 80B3D70C  80 1B 09 50 */	lwz r0, 0x950(r27)
/* 80B3D710  2C 00 00 00 */	cmpwi r0, 0
/* 80B3D714  40 82 00 7C */	bne lbl_80B3D790
/* 80B3D718  A8 1B 09 DE */	lha r0, 0x9de(r27)
/* 80B3D71C  2C 00 00 02 */	cmpwi r0, 2
/* 80B3D720  41 82 00 34 */	beq lbl_80B3D754
/* 80B3D724  40 80 00 50 */	bge lbl_80B3D774
/* 80B3D728  2C 00 00 01 */	cmpwi r0, 1
/* 80B3D72C  40 80 00 08 */	bge lbl_80B3D734
/* 80B3D730  48 00 00 44 */	b lbl_80B3D774
lbl_80B3D734:
/* 80B3D734  7F 63 DB 78 */	mr r3, r27
/* 80B3D738  38 80 00 03 */	li r4, 3
/* 80B3D73C  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3D740  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3D744  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3D748  7D 89 03 A6 */	mtctr r12
/* 80B3D74C  4E 80 04 21 */	bctrl 
/* 80B3D750  48 00 00 40 */	b lbl_80B3D790
lbl_80B3D754:
/* 80B3D754  7F 63 DB 78 */	mr r3, r27
/* 80B3D758  38 80 00 04 */	li r4, 4
/* 80B3D75C  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3D760  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3D764  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3D768  7D 89 03 A6 */	mtctr r12
/* 80B3D76C  4E 80 04 21 */	bctrl 
/* 80B3D770  48 00 00 20 */	b lbl_80B3D790
lbl_80B3D774:
/* 80B3D774  7F 63 DB 78 */	mr r3, r27
/* 80B3D778  38 80 00 05 */	li r4, 5
/* 80B3D77C  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3D780  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3D784  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3D788  7D 89 03 A6 */	mtctr r12
/* 80B3D78C  4E 80 04 21 */	bctrl 
lbl_80B3D790:
/* 80B3D790  80 7F 00 00 */	lwz r3, 0(r31)
/* 80B3D794  3C 83 CF D0 */	addis r4, r3, 0xcfd0
/* 80B3D798  38 84 CF CF */	addi r4, r4, -12337
/* 80B3D79C  28 04 00 08 */	cmplwi r4, 8
/* 80B3D7A0  41 81 03 94 */	bgt lbl_80B3DB34
/* 80B3D7A4  3C 60 80 B4 */	lis r3, lit_10144@ha /* 0x80B42C78@ha */
/* 80B3D7A8  38 63 2C 78 */	addi r3, r3, lit_10144@l /* 0x80B42C78@l */
/* 80B3D7AC  54 84 10 3A */	slwi r4, r4, 2
/* 80B3D7B0  7C 03 20 2E */	lwzx r0, r3, r4
/* 80B3D7B4  7C 09 03 A6 */	mtctr r0
/* 80B3D7B8  4E 80 04 20 */	bctr 
lbl_80B3D7BC:
/* 80B3D7BC  38 60 00 01 */	li r3, 1
/* 80B3D7C0  48 00 03 78 */	b lbl_80B3DB38
lbl_80B3D7C4:
/* 80B3D7C4  7F 63 DB 78 */	mr r3, r27
/* 80B3D7C8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3D7CC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3D7D0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B3D7D4  4B 4D CF 3D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B3D7D8  7C 7C 07 34 */	extsh r28, r3
/* 80B3D7DC  A8 7B 08 F2 */	lha r3, 0x8f2(r27)
/* 80B3D7E0  7C 1C 18 00 */	cmpw r28, r3
/* 80B3D7E4  40 82 00 0C */	bne lbl_80B3D7F0
/* 80B3D7E8  38 00 00 01 */	li r0, 1
/* 80B3D7EC  48 00 01 94 */	b lbl_80B3D980
lbl_80B3D7F0:
/* 80B3D7F0  80 9B 09 6C */	lwz r4, 0x96c(r27)
/* 80B3D7F4  2C 04 00 00 */	cmpwi r4, 0
/* 80B3D7F8  40 82 00 CC */	bne lbl_80B3D8C4
/* 80B3D7FC  7C 03 E0 50 */	subf r0, r3, r28
/* 80B3D800  7C 00 07 34 */	extsh r0, r0
/* 80B3D804  7C 03 E0 00 */	cmpw r3, r28
/* 80B3D808  40 82 00 10 */	bne lbl_80B3D818
/* 80B3D80C  38 04 00 01 */	addi r0, r4, 1
/* 80B3D810  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80B3D814  48 00 00 84 */	b lbl_80B3D898
lbl_80B3D818:
/* 80B3D818  C0 5E 05 8C */	lfs f2, 0x58c(r30)
/* 80B3D81C  C8 3E 05 98 */	lfd f1, 0x598(r30)
/* 80B3D820  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B3D824  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B3D828  3C 00 43 30 */	lis r0, 0x4330
/* 80B3D82C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B3D830  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80B3D834  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B3D838  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B3D83C  FC 00 02 10 */	fabs f0, f0
/* 80B3D840  FC 00 00 18 */	frsp f0, f0
/* 80B3D844  FC 00 00 1E */	fctiwz f0, f0
/* 80B3D848  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B3D84C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B3D850  2C 00 00 28 */	cmpwi r0, 0x28
/* 80B3D854  40 81 00 44 */	ble lbl_80B3D898
/* 80B3D858  7F 63 DB 78 */	mr r3, r27
/* 80B3D85C  38 80 00 05 */	li r4, 5
/* 80B3D860  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3D864  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3D868  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3D86C  7D 89 03 A6 */	mtctr r12
/* 80B3D870  4E 80 04 21 */	bctrl 
/* 80B3D874  7F 63 DB 78 */	mr r3, r27
/* 80B3D878  38 80 00 06 */	li r4, 6
/* 80B3D87C  80 BB 0B D8 */	lwz r5, 0xbd8(r27)
/* 80B3D880  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B3D884  38 A0 00 00 */	li r5, 0
/* 80B3D888  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3D88C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3D890  7D 89 03 A6 */	mtctr r12
/* 80B3D894  4E 80 04 21 */	bctrl 
lbl_80B3D898:
/* 80B3D898  B3 9B 09 96 */	sth r28, 0x996(r27)
/* 80B3D89C  38 00 00 00 */	li r0, 0
/* 80B3D8A0  90 1B 09 68 */	stw r0, 0x968(r27)
/* 80B3D8A4  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80B3D8A8  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80B3D8AC  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B3D8B0  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80B3D8B4  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 80B3D8B8  38 03 00 01 */	addi r0, r3, 1
/* 80B3D8BC  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80B3D8C0  48 00 00 68 */	b lbl_80B3D928
lbl_80B3D8C4:
/* 80B3D8C4  2C 04 00 01 */	cmpwi r4, 1
/* 80B3D8C8  40 82 00 60 */	bne lbl_80B3D928
/* 80B3D8CC  7F 63 DB 78 */	mr r3, r27
/* 80B3D8D0  A8 9B 09 96 */	lha r4, 0x996(r27)
/* 80B3D8D4  C0 3E 05 90 */	lfs f1, 0x590(r30)
/* 80B3D8D8  38 A0 00 00 */	li r5, 0
/* 80B3D8DC  4B 61 66 19 */	bl turn__8daNpcF_cFsfi
/* 80B3D8E0  2C 03 00 00 */	cmpwi r3, 0
/* 80B3D8E4  41 82 00 2C */	beq lbl_80B3D910
/* 80B3D8E8  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B3D8EC  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80B3D8F0  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B3D8F4  B0 1B 08 F2 */	sth r0, 0x8f2(r27)
/* 80B3D8F8  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B3D8FC  B0 1B 08 F8 */	sth r0, 0x8f8(r27)
/* 80B3D900  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 80B3D904  38 03 00 01 */	addi r0, r3, 1
/* 80B3D908  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80B3D90C  48 00 00 1C */	b lbl_80B3D928
lbl_80B3D910:
/* 80B3D910  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80B3D914  B0 1B 08 F8 */	sth r0, 0x8f8(r27)
/* 80B3D918  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B3D91C  B0 1B 08 F2 */	sth r0, 0x8f2(r27)
/* 80B3D920  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B3D924  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
lbl_80B3D928:
/* 80B3D928  80 1B 09 6C */	lwz r0, 0x96c(r27)
/* 80B3D92C  2C 00 00 01 */	cmpwi r0, 1
/* 80B3D930  40 81 00 4C */	ble lbl_80B3D97C
/* 80B3D934  7F 63 DB 78 */	mr r3, r27
/* 80B3D938  38 80 00 05 */	li r4, 5
/* 80B3D93C  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3D940  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3D944  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3D948  7D 89 03 A6 */	mtctr r12
/* 80B3D94C  4E 80 04 21 */	bctrl 
/* 80B3D950  7F 63 DB 78 */	mr r3, r27
/* 80B3D954  38 80 00 00 */	li r4, 0
/* 80B3D958  80 BB 0B D8 */	lwz r5, 0xbd8(r27)
/* 80B3D95C  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B3D960  38 A0 00 00 */	li r5, 0
/* 80B3D964  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3D968  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3D96C  7D 89 03 A6 */	mtctr r12
/* 80B3D970  4E 80 04 21 */	bctrl 
/* 80B3D974  38 00 00 00 */	li r0, 0
/* 80B3D978  90 1B 09 6C */	stw r0, 0x96c(r27)
lbl_80B3D97C:
/* 80B3D97C  38 00 00 00 */	li r0, 0
lbl_80B3D980:
/* 80B3D980  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B3D984  41 82 01 B0 */	beq lbl_80B3DB34
/* 80B3D988  7F 63 DB 78 */	mr r3, r27
/* 80B3D98C  38 80 00 00 */	li r4, 0
/* 80B3D990  38 A0 00 01 */	li r5, 1
/* 80B3D994  38 C0 00 00 */	li r6, 0
/* 80B3D998  4B 61 63 ED */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B3D99C  2C 03 00 00 */	cmpwi r3, 0
/* 80B3D9A0  41 82 01 94 */	beq lbl_80B3DB34
/* 80B3D9A4  A0 1B 0A 32 */	lhz r0, 0xa32(r27)
/* 80B3D9A8  7C 00 07 35 */	extsh. r0, r0
/* 80B3D9AC  40 82 00 48 */	bne lbl_80B3D9F4
/* 80B3D9B0  38 00 00 02 */	li r0, 2
/* 80B3D9B4  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B3D9B8  7F 63 DB 78 */	mr r3, r27
/* 80B3D9BC  88 1B 0E 9B */	lbz r0, 0xe9b(r27)
/* 80B3D9C0  54 00 10 3A */	slwi r0, r0, 2
/* 80B3D9C4  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3D9C8  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3D9CC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3D9D0  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80B3D9D4  54 00 10 3A */	slwi r0, r0, 2
/* 80B3D9D8  3C A0 80 B4 */	lis r5, l_evtNames@ha /* 0x80B42604@ha */
/* 80B3D9DC  38 A5 26 04 */	addi r5, r5, l_evtNames@l /* 0x80B42604@l */
/* 80B3D9E0  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B3D9E4  38 C0 00 01 */	li r6, 1
/* 80B3D9E8  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80B3D9EC  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80B3D9F0  4B 61 5F 65 */	bl changeEvent__8daNpcF_cFPcPcUsUs
lbl_80B3D9F4:
/* 80B3D9F4  38 60 00 01 */	li r3, 1
/* 80B3D9F8  48 00 01 40 */	b lbl_80B3DB38
lbl_80B3D9FC:
/* 80B3D9FC  7F A3 EB 78 */	mr r3, r29
/* 80B3DA00  7F 84 E3 78 */	mr r4, r28
/* 80B3DA04  3C A0 80 B4 */	lis r5, d_a_npc_wrestler__stringBase0@ha /* 0x80B41D7C@ha */
/* 80B3DA08  38 A5 1D 7C */	addi r5, r5, d_a_npc_wrestler__stringBase0@l /* 0x80B41D7C@l */
/* 80B3DA0C  38 A5 00 70 */	addi r5, r5, 0x70
/* 80B3DA10  38 C0 00 01 */	li r6, 1
/* 80B3DA14  4B 50 A6 D9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B3DA18  7C 64 1B 79 */	or. r4, r3, r3
/* 80B3DA1C  41 82 01 18 */	beq lbl_80B3DB34
/* 80B3DA20  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B3DA24  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80B3DA28  4B 73 2F 69 */	bl cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 80B3DA2C  2C 03 00 00 */	cmpwi r3, 0
/* 80B3DA30  41 82 01 04 */	beq lbl_80B3DB34
/* 80B3DA34  38 60 00 01 */	li r3, 1
/* 80B3DA38  48 00 01 00 */	b lbl_80B3DB38
lbl_80B3DA3C:
/* 80B3DA3C  3B 40 00 00 */	li r26, 0
/* 80B3DA40  3B E0 00 00 */	li r31, 0
/* 80B3DA44  7F 63 DB 78 */	mr r3, r27
/* 80B3DA48  38 80 00 00 */	li r4, 0
/* 80B3DA4C  38 A0 00 01 */	li r5, 1
/* 80B3DA50  38 C0 00 00 */	li r6, 0
/* 80B3DA54  4B 61 63 31 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B3DA58  2C 03 00 00 */	cmpwi r3, 0
/* 80B3DA5C  41 82 00 08 */	beq lbl_80B3DA64
/* 80B3DA60  3B 40 00 01 */	li r26, 1
lbl_80B3DA64:
/* 80B3DA64  7F A3 EB 78 */	mr r3, r29
/* 80B3DA68  7F 84 E3 78 */	mr r4, r28
/* 80B3DA6C  3C A0 80 B4 */	lis r5, d_a_npc_wrestler__stringBase0@ha /* 0x80B41D7C@ha */
/* 80B3DA70  38 A5 1D 7C */	addi r5, r5, d_a_npc_wrestler__stringBase0@l /* 0x80B41D7C@l */
/* 80B3DA74  38 A5 00 70 */	addi r5, r5, 0x70
/* 80B3DA78  38 C0 00 01 */	li r6, 1
/* 80B3DA7C  4B 50 A6 71 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B3DA80  7C 64 1B 79 */	or. r4, r3, r3
/* 80B3DA84  41 82 00 88 */	beq lbl_80B3DB0C
/* 80B3DA88  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B3DA8C  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80B3DA90  4B 73 2F 01 */	bl cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 80B3DA94  2C 03 00 00 */	cmpwi r3, 0
/* 80B3DA98  41 82 00 74 */	beq lbl_80B3DB0C
/* 80B3DA9C  7F A3 EB 78 */	mr r3, r29
/* 80B3DAA0  7F 84 E3 78 */	mr r4, r28
/* 80B3DAA4  3C A0 80 B4 */	lis r5, d_a_npc_wrestler__stringBase0@ha /* 0x80B41D7C@ha */
/* 80B3DAA8  38 A5 1D 7C */	addi r5, r5, d_a_npc_wrestler__stringBase0@l /* 0x80B41D7C@l */
/* 80B3DAAC  38 A5 00 74 */	addi r5, r5, 0x74
/* 80B3DAB0  38 C0 00 03 */	li r6, 3
/* 80B3DAB4  4B 50 A6 39 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B3DAB8  7C 64 1B 79 */	or. r4, r3, r3
/* 80B3DABC  41 82 00 50 */	beq lbl_80B3DB0C
/* 80B3DAC0  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 80B3DAC4  80 04 00 00 */	lwz r0, 0(r4)
/* 80B3DAC8  7C 04 07 34 */	extsh r4, r0
/* 80B3DACC  38 A0 01 00 */	li r5, 0x100
/* 80B3DAD0  4B 73 30 C1 */	bl cLib_chaseAngleS__FPsss
/* 80B3DAD4  2C 03 00 00 */	cmpwi r3, 0
/* 80B3DAD8  41 82 00 28 */	beq lbl_80B3DB00
/* 80B3DADC  7F 63 DB 78 */	mr r3, r27
/* 80B3DAE0  38 80 00 00 */	li r4, 0
/* 80B3DAE4  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3DAE8  38 A0 00 00 */	li r5, 0
/* 80B3DAEC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3DAF0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3DAF4  7D 89 03 A6 */	mtctr r12
/* 80B3DAF8  4E 80 04 21 */	bctrl 
/* 80B3DAFC  3B E0 00 01 */	li r31, 1
lbl_80B3DB00:
/* 80B3DB00  7F 63 DB 78 */	mr r3, r27
/* 80B3DB04  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 80B3DB08  4B 61 67 49 */	bl setAngle__8daNpcF_cFs
lbl_80B3DB0C:
/* 80B3DB0C  38 60 00 00 */	li r3, 0
/* 80B3DB10  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80B3DB14  41 82 00 10 */	beq lbl_80B3DB24
/* 80B3DB18  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B3DB1C  41 82 00 08 */	beq lbl_80B3DB24
/* 80B3DB20  38 60 00 01 */	li r3, 1
lbl_80B3DB24:
/* 80B3DB24  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80B3DB28  30 03 FF FF */	addic r0, r3, -1
/* 80B3DB2C  7C 60 19 10 */	subfe r3, r0, r3
/* 80B3DB30  48 00 00 08 */	b lbl_80B3DB38
lbl_80B3DB34:
/* 80B3DB34  38 60 00 00 */	li r3, 0
lbl_80B3DB38:
/* 80B3DB38  39 61 00 40 */	addi r11, r1, 0x40
/* 80B3DB3C  4B 82 46 E1 */	bl _restgpr_26
/* 80B3DB40  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B3DB44  7C 08 03 A6 */	mtlr r0
/* 80B3DB48  38 21 00 40 */	addi r1, r1, 0x40
/* 80B3DB4C  4E 80 00 20 */	blr 
