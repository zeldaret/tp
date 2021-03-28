lbl_805AB520:
/* 805AB520  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 805AB524  7C 08 02 A6 */	mflr r0
/* 805AB528  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 805AB52C  39 61 00 F0 */	addi r11, r1, 0xf0
/* 805AB530  4B DB 6C A8 */	b _savegpr_28
/* 805AB534  7C 7E 1B 78 */	mr r30, r3
/* 805AB538  3C 80 80 5B */	lis r4, lit_3850@ha
/* 805AB53C  3B A4 DF 50 */	addi r29, r4, lit_3850@l
/* 805AB540  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805AB544  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l
/* 805AB548  88 05 5D B0 */	lbz r0, 0x5db0(r5)
/* 805AB54C  7C 00 07 74 */	extsb r0, r0
/* 805AB550  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805AB554  7C 85 02 14 */	add r4, r5, r0
/* 805AB558  83 84 5D 74 */	lwz r28, 0x5d74(r4)
/* 805AB55C  83 E5 5D AC */	lwz r31, 0x5dac(r5)
/* 805AB560  80 03 08 88 */	lwz r0, 0x888(r3)
/* 805AB564  2C 00 00 00 */	cmpwi r0, 0
/* 805AB568  40 82 01 8C */	bne lbl_805AB6F4
/* 805AB56C  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 805AB570  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 805AB574  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805AB578  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 805AB57C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 805AB580  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 805AB584  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 805AB588  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 805AB58C  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 805AB590  38 61 00 D0 */	addi r3, r1, 0xd0
/* 805AB594  38 81 00 C4 */	addi r4, r1, 0xc4
/* 805AB598  4B CC 56 6C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805AB59C  B0 61 00 0A */	sth r3, 0xa(r1)
/* 805AB5A0  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 805AB5A4  D0 1E 08 48 */	stfs f0, 0x848(r30)
/* 805AB5A8  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805AB5AC  D0 1E 08 4C */	stfs f0, 0x84c(r30)
/* 805AB5B0  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 805AB5B4  D0 1E 08 50 */	stfs f0, 0x850(r30)
/* 805AB5B8  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 805AB5BC  D0 1E 08 3C */	stfs f0, 0x83c(r30)
/* 805AB5C0  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 805AB5C4  D0 1E 08 40 */	stfs f0, 0x840(r30)
/* 805AB5C8  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 805AB5CC  D0 1E 08 44 */	stfs f0, 0x844(r30)
/* 805AB5D0  C0 1E 08 48 */	lfs f0, 0x848(r30)
/* 805AB5D4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805AB5D8  C0 1E 08 4C */	lfs f0, 0x84c(r30)
/* 805AB5DC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805AB5E0  C0 1E 08 50 */	lfs f0, 0x850(r30)
/* 805AB5E4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805AB5E8  C0 1E 08 3C */	lfs f0, 0x83c(r30)
/* 805AB5EC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805AB5F0  C0 1E 08 40 */	lfs f0, 0x840(r30)
/* 805AB5F4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805AB5F8  C0 1E 08 44 */	lfs f0, 0x844(r30)
/* 805AB5FC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805AB600  38 7C 02 48 */	addi r3, r28, 0x248
/* 805AB604  38 81 00 64 */	addi r4, r1, 0x64
/* 805AB608  38 A1 00 58 */	addi r5, r1, 0x58
/* 805AB60C  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 805AB610  38 C0 00 00 */	li r6, 0
/* 805AB614  4B BD 54 CC */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 805AB618  38 00 00 03 */	li r0, 3
/* 805AB61C  B0 1F 06 04 */	sth r0, 0x604(r31)
/* 805AB620  38 00 00 00 */	li r0, 0
/* 805AB624  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 805AB628  7F E3 FB 78 */	mr r3, r31
/* 805AB62C  38 81 00 D0 */	addi r4, r1, 0xd0
/* 805AB630  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 805AB634  38 C0 00 00 */	li r6, 0
/* 805AB638  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 805AB63C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805AB640  7D 89 03 A6 */	mtctr r12
/* 805AB644  4E 80 04 21 */	bctrl 
/* 805AB648  A8 01 00 0A */	lha r0, 0xa(r1)
/* 805AB64C  B0 1F 06 06 */	sth r0, 0x606(r31)
/* 805AB650  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 805AB654  D0 1F 06 1C */	stfs f0, 0x61c(r31)
/* 805AB658  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 805AB65C  D0 1F 06 20 */	stfs f0, 0x620(r31)
/* 805AB660  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 805AB664  D0 1F 06 24 */	stfs f0, 0x624(r31)
/* 805AB668  38 00 00 04 */	li r0, 4
/* 805AB66C  90 1F 06 14 */	stw r0, 0x614(r31)
/* 805AB670  38 00 00 00 */	li r0, 0
/* 805AB674  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 805AB678  90 1F 06 10 */	stw r0, 0x610(r31)
/* 805AB67C  B0 1F 06 0A */	sth r0, 0x60a(r31)
/* 805AB680  38 00 00 05 */	li r0, 5
/* 805AB684  98 1E 08 B5 */	stb r0, 0x8b5(r30)
/* 805AB688  38 60 00 02 */	li r3, 2
/* 805AB68C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805AB690  7C 04 07 74 */	extsb r4, r0
/* 805AB694  38 A1 00 D0 */	addi r5, r1, 0xd0
/* 805AB698  38 C1 00 08 */	addi r6, r1, 8
/* 805AB69C  4B BA A0 D8 */	b daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz
/* 805AB6A0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805AB6A4  7C 06 07 74 */	extsb r6, r0
/* 805AB6A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805AB6AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805AB6B0  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 805AB6B4  38 81 00 D0 */	addi r4, r1, 0xd0
/* 805AB6B8  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 805AB6BC  4B A8 98 C4 */	b setRoom__13dSv_restart_cFRC4cXyzsSc
/* 805AB6C0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805AB6C4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805AB6C8  80 63 00 00 */	lwz r3, 0(r3)
/* 805AB6CC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805AB6D0  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100008D@ha */
/* 805AB6D4  38 84 00 8D */	addi r4, r4, 0x008D /* 0x0100008D@l */
/* 805AB6D8  4B D0 3D C4 */	b subBgmStart__8Z2SeqMgrFUl
/* 805AB6DC  38 00 00 01 */	li r0, 1
/* 805AB6E0  98 1E 08 B7 */	stb r0, 0x8b7(r30)
/* 805AB6E4  80 7E 08 88 */	lwz r3, 0x888(r30)
/* 805AB6E8  38 03 00 01 */	addi r0, r3, 1
/* 805AB6EC  90 1E 08 88 */	stw r0, 0x888(r30)
/* 805AB6F0  48 00 05 24 */	b lbl_805ABC14
lbl_805AB6F4:
/* 805AB6F4  2C 00 FF FF */	cmpwi r0, -1
/* 805AB6F8  41 82 05 1C */	beq lbl_805ABC14
/* 805AB6FC  2C 00 00 01 */	cmpwi r0, 1
/* 805AB700  40 82 00 C8 */	bne lbl_805AB7C8
/* 805AB704  88 1E 08 B5 */	lbz r0, 0x8b5(r30)
/* 805AB708  28 00 00 00 */	cmplwi r0, 0
/* 805AB70C  40 82 05 08 */	bne lbl_805ABC14
/* 805AB710  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 805AB714  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805AB718  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805AB71C  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 805AB720  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 805AB724  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 805AB728  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 805AB72C  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 805AB730  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 805AB734  38 61 00 B8 */	addi r3, r1, 0xb8
/* 805AB738  38 81 00 AC */	addi r4, r1, 0xac
/* 805AB73C  4B CC 54 C8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805AB740  7C 7C 1B 78 */	mr r28, r3
/* 805AB744  7F E3 FB 78 */	mr r3, r31
/* 805AB748  38 81 00 B8 */	addi r4, r1, 0xb8
/* 805AB74C  7F 85 E3 78 */	mr r5, r28
/* 805AB750  38 C0 00 00 */	li r6, 0
/* 805AB754  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 805AB758  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805AB75C  7D 89 03 A6 */	mtctr r12
/* 805AB760  4E 80 04 21 */	bctrl 
/* 805AB764  B3 9F 06 06 */	sth r28, 0x606(r31)
/* 805AB768  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 805AB76C  D0 1F 06 1C */	stfs f0, 0x61c(r31)
/* 805AB770  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 805AB774  D0 1F 06 20 */	stfs f0, 0x620(r31)
/* 805AB778  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 805AB77C  D0 1F 06 24 */	stfs f0, 0x624(r31)
/* 805AB780  38 00 00 02 */	li r0, 2
/* 805AB784  90 1F 06 14 */	stw r0, 0x614(r31)
/* 805AB788  38 00 00 00 */	li r0, 0
/* 805AB78C  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 805AB790  90 1F 06 10 */	stw r0, 0x610(r31)
/* 805AB794  B0 1F 06 0A */	sth r0, 0x60a(r31)
/* 805AB798  38 00 00 5A */	li r0, 0x5a
/* 805AB79C  98 1E 08 B5 */	stb r0, 0x8b5(r30)
/* 805AB7A0  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 805AB7A4  D0 1E 08 98 */	stfs f0, 0x898(r30)
/* 805AB7A8  38 00 00 01 */	li r0, 1
/* 805AB7AC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805AB7B0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805AB7B4  98 03 12 CC */	stb r0, 0x12cc(r3)
/* 805AB7B8  80 7E 08 88 */	lwz r3, 0x888(r30)
/* 805AB7BC  38 03 00 01 */	addi r0, r3, 1
/* 805AB7C0  90 1E 08 88 */	stw r0, 0x888(r30)
/* 805AB7C4  48 00 04 50 */	b lbl_805ABC14
lbl_805AB7C8:
/* 805AB7C8  2C 00 00 02 */	cmpwi r0, 2
/* 805AB7CC  40 82 00 9C */	bne lbl_805AB868
/* 805AB7D0  88 1E 08 B5 */	lbz r0, 0x8b5(r30)
/* 805AB7D4  28 00 00 00 */	cmplwi r0, 0
/* 805AB7D8  41 82 00 78 */	beq lbl_805AB850
/* 805AB7DC  28 00 00 0A */	cmplwi r0, 0xa
/* 805AB7E0  41 81 00 14 */	bgt lbl_805AB7F4
/* 805AB7E4  38 7E 08 98 */	addi r3, r30, 0x898
/* 805AB7E8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805AB7EC  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 805AB7F0  4B CC 4F 50 */	b cLib_chaseF__FPfff
lbl_805AB7F4:
/* 805AB7F4  C0 3E 08 4C */	lfs f1, 0x84c(r30)
/* 805AB7F8  C0 1E 08 98 */	lfs f0, 0x898(r30)
/* 805AB7FC  EC 01 00 2A */	fadds f0, f1, f0
/* 805AB800  D0 1E 08 4C */	stfs f0, 0x84c(r30)
/* 805AB804  C0 1E 08 48 */	lfs f0, 0x848(r30)
/* 805AB808  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805AB80C  C0 1E 08 4C */	lfs f0, 0x84c(r30)
/* 805AB810  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805AB814  C0 1E 08 50 */	lfs f0, 0x850(r30)
/* 805AB818  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805AB81C  C0 1E 08 3C */	lfs f0, 0x83c(r30)
/* 805AB820  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805AB824  C0 1E 08 40 */	lfs f0, 0x840(r30)
/* 805AB828  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805AB82C  C0 1E 08 44 */	lfs f0, 0x844(r30)
/* 805AB830  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805AB834  38 7C 02 48 */	addi r3, r28, 0x248
/* 805AB838  38 81 00 4C */	addi r4, r1, 0x4c
/* 805AB83C  38 A1 00 40 */	addi r5, r1, 0x40
/* 805AB840  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 805AB844  38 C0 00 00 */	li r6, 0
/* 805AB848  4B BD 52 98 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 805AB84C  48 00 03 C8 */	b lbl_805ABC14
lbl_805AB850:
/* 805AB850  38 00 00 3C */	li r0, 0x3c
/* 805AB854  98 1E 08 B5 */	stb r0, 0x8b5(r30)
/* 805AB858  80 7E 08 88 */	lwz r3, 0x888(r30)
/* 805AB85C  38 03 00 01 */	addi r0, r3, 1
/* 805AB860  90 1E 08 88 */	stw r0, 0x888(r30)
/* 805AB864  48 00 03 B0 */	b lbl_805ABC14
lbl_805AB868:
/* 805AB868  2C 00 00 03 */	cmpwi r0, 3
/* 805AB86C  40 82 01 34 */	bne lbl_805AB9A0
/* 805AB870  88 1E 08 B5 */	lbz r0, 0x8b5(r30)
/* 805AB874  28 00 00 00 */	cmplwi r0, 0
/* 805AB878  40 82 00 90 */	bne lbl_805AB908
/* 805AB87C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805AB880  D0 3E 08 48 */	stfs f1, 0x848(r30)
/* 805AB884  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 805AB888  D0 1E 08 4C */	stfs f0, 0x84c(r30)
/* 805AB88C  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 805AB890  D0 1E 08 50 */	stfs f0, 0x850(r30)
/* 805AB894  D0 3E 08 3C */	stfs f1, 0x83c(r30)
/* 805AB898  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 805AB89C  D0 1E 08 40 */	stfs f0, 0x840(r30)
/* 805AB8A0  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 805AB8A4  D0 1E 08 44 */	stfs f0, 0x844(r30)
/* 805AB8A8  C0 1E 08 48 */	lfs f0, 0x848(r30)
/* 805AB8AC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805AB8B0  C0 1E 08 4C */	lfs f0, 0x84c(r30)
/* 805AB8B4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805AB8B8  C0 1E 08 50 */	lfs f0, 0x850(r30)
/* 805AB8BC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805AB8C0  C0 1E 08 3C */	lfs f0, 0x83c(r30)
/* 805AB8C4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805AB8C8  C0 1E 08 40 */	lfs f0, 0x840(r30)
/* 805AB8CC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805AB8D0  C0 1E 08 44 */	lfs f0, 0x844(r30)
/* 805AB8D4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805AB8D8  38 7C 02 48 */	addi r3, r28, 0x248
/* 805AB8DC  38 81 00 34 */	addi r4, r1, 0x34
/* 805AB8E0  38 A1 00 28 */	addi r5, r1, 0x28
/* 805AB8E4  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 805AB8E8  38 C0 00 00 */	li r6, 0
/* 805AB8EC  4B BD 51 F4 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 805AB8F0  38 00 00 14 */	li r0, 0x14
/* 805AB8F4  98 1E 08 B5 */	stb r0, 0x8b5(r30)
/* 805AB8F8  80 7E 08 88 */	lwz r3, 0x888(r30)
/* 805AB8FC  38 03 00 01 */	addi r0, r3, 1
/* 805AB900  90 1E 08 88 */	stw r0, 0x888(r30)
/* 805AB904  48 00 03 10 */	b lbl_805ABC14
lbl_805AB908:
/* 805AB908  28 00 00 01 */	cmplwi r0, 1
/* 805AB90C  40 82 03 08 */	bne lbl_805ABC14
/* 805AB910  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 805AB914  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805AB918  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805AB91C  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 805AB920  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 805AB924  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805AB928  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 805AB92C  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 805AB930  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 805AB934  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 805AB938  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805AB93C  38 81 00 94 */	addi r4, r1, 0x94
/* 805AB940  4B CC 52 C4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805AB944  7C 7C 1B 78 */	mr r28, r3
/* 805AB948  7F E3 FB 78 */	mr r3, r31
/* 805AB94C  38 81 00 A0 */	addi r4, r1, 0xa0
/* 805AB950  7F 85 E3 78 */	mr r5, r28
/* 805AB954  38 C0 00 00 */	li r6, 0
/* 805AB958  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 805AB95C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805AB960  7D 89 03 A6 */	mtctr r12
/* 805AB964  4E 80 04 21 */	bctrl 
/* 805AB968  B3 9F 06 06 */	sth r28, 0x606(r31)
/* 805AB96C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 805AB970  D0 1F 06 1C */	stfs f0, 0x61c(r31)
/* 805AB974  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 805AB978  D0 1F 06 20 */	stfs f0, 0x620(r31)
/* 805AB97C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 805AB980  D0 1F 06 24 */	stfs f0, 0x624(r31)
/* 805AB984  38 00 00 04 */	li r0, 4
/* 805AB988  90 1F 06 14 */	stw r0, 0x614(r31)
/* 805AB98C  38 00 00 00 */	li r0, 0
/* 805AB990  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 805AB994  90 1F 06 10 */	stw r0, 0x610(r31)
/* 805AB998  B0 1F 06 0A */	sth r0, 0x60a(r31)
/* 805AB99C  48 00 02 78 */	b lbl_805ABC14
lbl_805AB9A0:
/* 805AB9A0  2C 00 00 04 */	cmpwi r0, 4
/* 805AB9A4  40 82 00 B4 */	bne lbl_805ABA58
/* 805AB9A8  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 805AB9AC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805AB9B0  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805AB9B4  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 805AB9B8  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 805AB9BC  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805AB9C0  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 805AB9C4  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 805AB9C8  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 805AB9CC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805AB9D0  38 61 00 88 */	addi r3, r1, 0x88
/* 805AB9D4  38 81 00 7C */	addi r4, r1, 0x7c
/* 805AB9D8  4B CC 52 2C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805AB9DC  7C 7C 1B 78 */	mr r28, r3
/* 805AB9E0  88 1E 08 B5 */	lbz r0, 0x8b5(r30)
/* 805AB9E4  28 00 00 00 */	cmplwi r0, 0
/* 805AB9E8  40 82 02 2C */	bne lbl_805ABC14
/* 805AB9EC  7F E3 FB 78 */	mr r3, r31
/* 805AB9F0  38 81 00 88 */	addi r4, r1, 0x88
/* 805AB9F4  7F 85 E3 78 */	mr r5, r28
/* 805AB9F8  38 C0 00 00 */	li r6, 0
/* 805AB9FC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 805ABA00  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805ABA04  7D 89 03 A6 */	mtctr r12
/* 805ABA08  4E 80 04 21 */	bctrl 
/* 805ABA0C  B3 9F 06 06 */	sth r28, 0x606(r31)
/* 805ABA10  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 805ABA14  D0 1F 06 1C */	stfs f0, 0x61c(r31)
/* 805ABA18  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 805ABA1C  D0 1F 06 20 */	stfs f0, 0x620(r31)
/* 805ABA20  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 805ABA24  D0 1F 06 24 */	stfs f0, 0x624(r31)
/* 805ABA28  38 00 00 02 */	li r0, 2
/* 805ABA2C  90 1F 06 14 */	stw r0, 0x614(r31)
/* 805ABA30  38 00 00 00 */	li r0, 0
/* 805ABA34  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 805ABA38  90 1F 06 10 */	stw r0, 0x610(r31)
/* 805ABA3C  B0 1F 06 0A */	sth r0, 0x60a(r31)
/* 805ABA40  38 00 00 46 */	li r0, 0x46
/* 805ABA44  98 1E 08 B5 */	stb r0, 0x8b5(r30)
/* 805ABA48  80 7E 08 88 */	lwz r3, 0x888(r30)
/* 805ABA4C  38 03 00 01 */	addi r0, r3, 1
/* 805ABA50  90 1E 08 88 */	stw r0, 0x888(r30)
/* 805ABA54  48 00 01 C0 */	b lbl_805ABC14
lbl_805ABA58:
/* 805ABA58  2C 00 00 05 */	cmpwi r0, 5
/* 805ABA5C  40 82 00 3C */	bne lbl_805ABA98
/* 805ABA60  88 1E 08 B5 */	lbz r0, 0x8b5(r30)
/* 805ABA64  28 00 00 00 */	cmplwi r0, 0
/* 805ABA68  40 82 01 AC */	bne lbl_805ABC14
/* 805ABA6C  38 00 00 14 */	li r0, 0x14
/* 805ABA70  98 1E 08 B5 */	stb r0, 0x8b5(r30)
/* 805ABA74  38 00 00 00 */	li r0, 0
/* 805ABA78  90 1F 06 14 */	stw r0, 0x614(r31)
/* 805ABA7C  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 805ABA80  90 1F 06 10 */	stw r0, 0x610(r31)
/* 805ABA84  B0 1F 06 0A */	sth r0, 0x60a(r31)
/* 805ABA88  80 7E 08 88 */	lwz r3, 0x888(r30)
/* 805ABA8C  38 03 00 01 */	addi r0, r3, 1
/* 805ABA90  90 1E 08 88 */	stw r0, 0x888(r30)
/* 805ABA94  48 00 01 80 */	b lbl_805ABC14
lbl_805ABA98:
/* 805ABA98  2C 00 00 06 */	cmpwi r0, 6
/* 805ABA9C  40 82 00 40 */	bne lbl_805ABADC
/* 805ABAA0  88 1E 08 B5 */	lbz r0, 0x8b5(r30)
/* 805ABAA4  28 00 00 00 */	cmplwi r0, 0
/* 805ABAA8  40 82 01 6C */	bne lbl_805ABC14
/* 805ABAAC  38 00 00 5C */	li r0, 0x5c
/* 805ABAB0  98 1E 08 B5 */	stb r0, 0x8b5(r30)
/* 805ABAB4  38 00 00 14 */	li r0, 0x14
/* 805ABAB8  90 1F 06 14 */	stw r0, 0x614(r31)
/* 805ABABC  38 00 00 00 */	li r0, 0
/* 805ABAC0  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 805ABAC4  90 1F 06 10 */	stw r0, 0x610(r31)
/* 805ABAC8  B0 1F 06 0A */	sth r0, 0x60a(r31)
/* 805ABACC  80 7E 08 88 */	lwz r3, 0x888(r30)
/* 805ABAD0  38 03 00 01 */	addi r0, r3, 1
/* 805ABAD4  90 1E 08 88 */	stw r0, 0x888(r30)
/* 805ABAD8  48 00 01 3C */	b lbl_805ABC14
lbl_805ABADC:
/* 805ABADC  2C 00 00 07 */	cmpwi r0, 7
/* 805ABAE0  40 82 00 64 */	bne lbl_805ABB44
/* 805ABAE4  88 1E 08 B5 */	lbz r0, 0x8b5(r30)
/* 805ABAE8  28 00 00 00 */	cmplwi r0, 0
/* 805ABAEC  40 82 01 28 */	bne lbl_805ABC14
/* 805ABAF0  38 00 00 96 */	li r0, 0x96
/* 805ABAF4  98 1E 08 B6 */	stb r0, 0x8b6(r30)
/* 805ABAF8  38 00 00 02 */	li r0, 2
/* 805ABAFC  90 1F 06 14 */	stw r0, 0x614(r31)
/* 805ABB00  38 00 00 00 */	li r0, 0
/* 805ABB04  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 805ABB08  90 1F 06 10 */	stw r0, 0x610(r31)
/* 805ABB0C  B0 1F 06 0A */	sth r0, 0x60a(r31)
/* 805ABB10  3C 80 80 5B */	lis r4, lit_3940@ha
/* 805ABB14  38 A4 E0 C4 */	addi r5, r4, lit_3940@l
/* 805ABB18  80 85 00 00 */	lwz r4, 0(r5)
/* 805ABB1C  80 05 00 04 */	lwz r0, 4(r5)
/* 805ABB20  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805ABB24  90 01 00 20 */	stw r0, 0x20(r1)
/* 805ABB28  80 05 00 08 */	lwz r0, 8(r5)
/* 805ABB2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805ABB30  38 81 00 1C */	addi r4, r1, 0x1c
/* 805ABB34  4B FF F6 31 */	bl setDrAction__9daL7ODR_cFM9daL7ODR_cFPCvPv_v
/* 805ABB38  38 00 00 09 */	li r0, 9
/* 805ABB3C  90 1E 08 88 */	stw r0, 0x888(r30)
/* 805ABB40  48 00 00 D4 */	b lbl_805ABC14
lbl_805ABB44:
/* 805ABB44  2C 00 00 08 */	cmpwi r0, 8
/* 805ABB48  40 82 00 50 */	bne lbl_805ABB98
/* 805ABB4C  88 1E 08 B5 */	lbz r0, 0x8b5(r30)
/* 805ABB50  28 00 00 00 */	cmplwi r0, 0
/* 805ABB54  40 82 00 C0 */	bne lbl_805ABC14
/* 805ABB58  3C 80 80 5B */	lis r4, lit_3947@ha
/* 805ABB5C  38 A4 E0 D0 */	addi r5, r4, lit_3947@l
/* 805ABB60  80 85 00 00 */	lwz r4, 0(r5)
/* 805ABB64  80 05 00 04 */	lwz r0, 4(r5)
/* 805ABB68  90 81 00 10 */	stw r4, 0x10(r1)
/* 805ABB6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805ABB70  80 05 00 08 */	lwz r0, 8(r5)
/* 805ABB74  90 01 00 18 */	stw r0, 0x18(r1)
/* 805ABB78  38 81 00 10 */	addi r4, r1, 0x10
/* 805ABB7C  4B FF F5 E9 */	bl setDrAction__9daL7ODR_cFM9daL7ODR_cFPCvPv_v
/* 805ABB80  38 00 00 5A */	li r0, 0x5a
/* 805ABB84  98 1E 08 B6 */	stb r0, 0x8b6(r30)
/* 805ABB88  80 7E 08 88 */	lwz r3, 0x888(r30)
/* 805ABB8C  38 03 00 01 */	addi r0, r3, 1
/* 805ABB90  90 1E 08 88 */	stw r0, 0x888(r30)
/* 805ABB94  48 00 00 80 */	b lbl_805ABC14
lbl_805ABB98:
/* 805ABB98  88 1E 08 B6 */	lbz r0, 0x8b6(r30)
/* 805ABB9C  28 00 00 00 */	cmplwi r0, 0
/* 805ABBA0  40 82 00 74 */	bne lbl_805ABC14
/* 805ABBA4  C0 5F 04 D0 */	lfs f2, 0x4d0(r31)
/* 805ABBA8  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 805ABBAC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805ABBB0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805ABBB4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805ABBB8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805ABBBC  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805ABBC0  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 805ABBC4  41 82 00 50 */	beq lbl_805ABC14
/* 805ABBC8  38 61 00 70 */	addi r3, r1, 0x70
/* 805ABBCC  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 805ABBD0  4B CC 4B 70 */	b cLib_chaseF__FPfff
/* 805ABBD4  7F E3 FB 78 */	mr r3, r31
/* 805ABBD8  38 81 00 70 */	addi r4, r1, 0x70
/* 805ABBDC  38 A0 80 00 */	li r5, -32768
/* 805ABBE0  38 C0 00 00 */	li r6, 0
/* 805ABBE4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 805ABBE8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805ABBEC  7D 89 03 A6 */	mtctr r12
/* 805ABBF0  4E 80 04 21 */	bctrl 
/* 805ABBF4  38 00 80 00 */	li r0, -32768
/* 805ABBF8  B0 1F 06 06 */	sth r0, 0x606(r31)
/* 805ABBFC  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 805ABC00  D0 1F 06 1C */	stfs f0, 0x61c(r31)
/* 805ABC04  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 805ABC08  D0 1F 06 20 */	stfs f0, 0x620(r31)
/* 805ABC0C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 805ABC10  D0 1F 06 24 */	stfs f0, 0x624(r31)
lbl_805ABC14:
/* 805ABC14  39 61 00 F0 */	addi r11, r1, 0xf0
/* 805ABC18  4B DB 66 0C */	b _restgpr_28
/* 805ABC1C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 805ABC20  7C 08 03 A6 */	mtlr r0
/* 805ABC24  38 21 00 F0 */	addi r1, r1, 0xf0
/* 805ABC28  4E 80 00 20 */	blr 
