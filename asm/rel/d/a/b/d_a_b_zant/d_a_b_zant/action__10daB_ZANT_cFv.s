lbl_8064C5A8:
/* 8064C5A8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8064C5AC  7C 08 02 A6 */	mflr r0
/* 8064C5B0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8064C5B4  39 61 00 50 */	addi r11, r1, 0x50
/* 8064C5B8  4B D1 5C 19 */	bl _savegpr_26
/* 8064C5BC  7C 7E 1B 78 */	mr r30, r3
/* 8064C5C0  3C 80 80 65 */	lis r4, lit_3757@ha /* 0x8064EB1C@ha */
/* 8064C5C4  3B E4 EB 1C */	addi r31, r4, lit_3757@l /* 0x8064EB1C@l */
/* 8064C5C8  88 03 06 FB */	lbz r0, 0x6fb(r3)
/* 8064C5CC  28 00 00 05 */	cmplwi r0, 5
/* 8064C5D0  40 82 00 0C */	bne lbl_8064C5DC
/* 8064C5D4  4B FF 2F 51 */	bl ice_damage_check__10daB_ZANT_cFv
/* 8064C5D8  48 00 00 08 */	b lbl_8064C5E0
lbl_8064C5DC:
/* 8064C5DC  4B FF 23 5D */	bl damage_check__10daB_ZANT_cFv
lbl_8064C5E0:
/* 8064C5E0  80 1E 06 D4 */	lwz r0, 0x6d4(r30)
/* 8064C5E4  28 00 00 17 */	cmplwi r0, 0x17
/* 8064C5E8  41 81 01 38 */	bgt lbl_8064C720
/* 8064C5EC  3C 60 80 65 */	lis r3, lit_9987@ha /* 0x8064F3C8@ha */
/* 8064C5F0  38 63 F3 C8 */	addi r3, r3, lit_9987@l /* 0x8064F3C8@l */
/* 8064C5F4  54 00 10 3A */	slwi r0, r0, 2
/* 8064C5F8  7C 03 00 2E */	lwzx r0, r3, r0
/* 8064C5FC  7C 09 03 A6 */	mtctr r0
/* 8064C600  4E 80 04 20 */	bctr 
lbl_8064C604:
/* 8064C604  7F C3 F3 78 */	mr r3, r30
/* 8064C608  4B FF 40 6D */	bl executeSmallAttack__10daB_ZANT_cFv
/* 8064C60C  48 00 01 14 */	b lbl_8064C720
lbl_8064C610:
/* 8064C610  7F C3 F3 78 */	mr r3, r30
/* 8064C614  4B FF 47 01 */	bl executeWarp__10daB_ZANT_cFv
/* 8064C618  48 00 01 08 */	b lbl_8064C720
lbl_8064C61C:
/* 8064C61C  7F C3 F3 78 */	mr r3, r30
/* 8064C620  4B FF 4C 89 */	bl executeDamage__10daB_ZANT_cFv
/* 8064C624  48 00 00 FC */	b lbl_8064C720
lbl_8064C628:
/* 8064C628  7F C3 F3 78 */	mr r3, r30
/* 8064C62C  4B FF 4E B9 */	bl executeConfuse__10daB_ZANT_cFv
/* 8064C630  48 00 00 F0 */	b lbl_8064C720
lbl_8064C634:
/* 8064C634  7F C3 F3 78 */	mr r3, r30
/* 8064C638  4B FF 50 09 */	bl executeOpening__10daB_ZANT_cFv
/* 8064C63C  48 00 00 E4 */	b lbl_8064C720
lbl_8064C640:
/* 8064C640  7F C3 F3 78 */	mr r3, r30
/* 8064C644  4B FF 61 A9 */	bl executeFly__10daB_ZANT_cFv
/* 8064C648  48 00 00 D8 */	b lbl_8064C720
lbl_8064C64C:
/* 8064C64C  7F C3 F3 78 */	mr r3, r30
/* 8064C650  4B FF 68 79 */	bl executeFlyGround__10daB_ZANT_cFv
/* 8064C654  48 00 00 CC */	b lbl_8064C720
lbl_8064C658:
/* 8064C658  7F C3 F3 78 */	mr r3, r30
/* 8064C65C  4B FF 70 35 */	bl executeWater__10daB_ZANT_cFv
/* 8064C660  48 00 00 C0 */	b lbl_8064C720
lbl_8064C664:
/* 8064C664  7F C3 F3 78 */	mr r3, r30
/* 8064C668  4B FF 6E A5 */	bl executeHook__10daB_ZANT_cFv
/* 8064C66C  48 00 00 B4 */	b lbl_8064C720
lbl_8064C670:
/* 8064C670  7F C3 F3 78 */	mr r3, r30
/* 8064C674  4B FF 7A 01 */	bl executeSwim__10daB_ZANT_cFv
/* 8064C678  48 00 00 A8 */	b lbl_8064C720
lbl_8064C67C:
/* 8064C67C  7F C3 F3 78 */	mr r3, r30
/* 8064C680  4B FF 83 BD */	bl executeSimaJump__10daB_ZANT_cFv
/* 8064C684  48 00 00 9C */	b lbl_8064C720
lbl_8064C688:
/* 8064C688  7F C3 F3 78 */	mr r3, r30
/* 8064C68C  4B FF 89 89 */	bl executeIceDemo__10daB_ZANT_cFv
/* 8064C690  48 00 00 90 */	b lbl_8064C720
lbl_8064C694:
/* 8064C694  7F C3 F3 78 */	mr r3, r30
/* 8064C698  4B FF 8B B5 */	bl executeIceJump__10daB_ZANT_cFv
/* 8064C69C  48 00 00 84 */	b lbl_8064C720
lbl_8064C6A0:
/* 8064C6A0  7F C3 F3 78 */	mr r3, r30
/* 8064C6A4  4B FF 97 01 */	bl executeIceStep__10daB_ZANT_cFv
/* 8064C6A8  48 00 00 78 */	b lbl_8064C720
lbl_8064C6AC:
/* 8064C6AC  7F C3 F3 78 */	mr r3, r30
/* 8064C6B0  4B FF A1 CD */	bl executeIceDamage__10daB_ZANT_cFv
/* 8064C6B4  48 00 00 6C */	b lbl_8064C720
lbl_8064C6B8:
/* 8064C6B8  7F C3 F3 78 */	mr r3, r30
/* 8064C6BC  4B FF B4 0D */	bl executeMonkey__10daB_ZANT_cFv
/* 8064C6C0  48 00 00 60 */	b lbl_8064C720
lbl_8064C6C4:
/* 8064C6C4  7F C3 F3 78 */	mr r3, r30
/* 8064C6C8  4B FF BB 2D */	bl executeMonkeyFall__10daB_ZANT_cFv
/* 8064C6CC  48 00 00 54 */	b lbl_8064C720
lbl_8064C6D0:
/* 8064C6D0  7F C3 F3 78 */	mr r3, r30
/* 8064C6D4  4B FF BE 71 */	bl executeMonkeyDamage__10daB_ZANT_cFv
/* 8064C6D8  48 00 00 48 */	b lbl_8064C720
lbl_8064C6DC:
/* 8064C6DC  7F C3 F3 78 */	mr r3, r30
/* 8064C6E0  4B FF C8 85 */	bl executeLastStartDemo__10daB_ZANT_cFv
/* 8064C6E4  48 00 00 3C */	b lbl_8064C720
lbl_8064C6E8:
/* 8064C6E8  7F C3 F3 78 */	mr r3, r30
/* 8064C6EC  4B FF CD BD */	bl executeLastAttack__10daB_ZANT_cFv
/* 8064C6F0  48 00 00 30 */	b lbl_8064C720
lbl_8064C6F4:
/* 8064C6F4  7F C3 F3 78 */	mr r3, r30
/* 8064C6F8  4B FF DE 95 */	bl executeLastTired__10daB_ZANT_cFv
/* 8064C6FC  48 00 00 24 */	b lbl_8064C720
lbl_8064C700:
/* 8064C700  7F C3 F3 78 */	mr r3, r30
/* 8064C704  4B FF DF 85 */	bl executeLastDamage__10daB_ZANT_cFv
/* 8064C708  48 00 00 18 */	b lbl_8064C720
lbl_8064C70C:
/* 8064C70C  7F C3 F3 78 */	mr r3, r30
/* 8064C710  4B FF E5 7D */	bl executeLastEndDemo__10daB_ZANT_cFv
/* 8064C714  48 00 00 0C */	b lbl_8064C720
lbl_8064C718:
/* 8064C718  7F C3 F3 78 */	mr r3, r30
/* 8064C71C  4B FF F1 4D */	bl executeRoomChange__10daB_ZANT_cFv
lbl_8064C720:
/* 8064C720  80 1E 06 D4 */	lwz r0, 0x6d4(r30)
/* 8064C724  2C 00 00 04 */	cmpwi r0, 4
/* 8064C728  41 82 00 1C */	beq lbl_8064C744
/* 8064C72C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064C730  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064C734  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8064C738  80 03 05 88 */	lwz r0, 0x588(r3)
/* 8064C73C  64 00 02 00 */	oris r0, r0, 0x200
/* 8064C740  90 03 05 88 */	stw r0, 0x588(r3)
lbl_8064C744:
/* 8064C744  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8064C748  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8064C74C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8064C750  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8064C754  88 1E 06 FB */	lbz r0, 0x6fb(r30)
/* 8064C758  2C 00 00 04 */	cmpwi r0, 4
/* 8064C75C  41 82 01 EC */	beq lbl_8064C948
/* 8064C760  40 80 00 1C */	bge lbl_8064C77C
/* 8064C764  2C 00 00 02 */	cmpwi r0, 2
/* 8064C768  41 82 01 E8 */	beq lbl_8064C950
/* 8064C76C  40 80 01 B8 */	bge lbl_8064C924
/* 8064C770  2C 00 00 01 */	cmpwi r0, 1
/* 8064C774  40 80 00 18 */	bge lbl_8064C78C
/* 8064C778  48 00 01 D8 */	b lbl_8064C950
lbl_8064C77C:
/* 8064C77C  2C 00 00 06 */	cmpwi r0, 6
/* 8064C780  41 82 01 D0 */	beq lbl_8064C950
/* 8064C784  40 80 01 CC */	bge lbl_8064C950
/* 8064C788  48 00 00 38 */	b lbl_8064C7C0
lbl_8064C78C:
/* 8064C78C  88 1E 07 0C */	lbz r0, 0x70c(r30)
/* 8064C790  28 00 00 00 */	cmplwi r0, 0
/* 8064C794  40 82 00 18 */	bne lbl_8064C7AC
/* 8064C798  38 60 00 00 */	li r3, 0
/* 8064C79C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8064C7A0  7C 04 07 74 */	extsb r4, r0
/* 8064C7A4  4B 9E 12 F9 */	bl dComIfGs_onOneZoneSwitch__Fii
/* 8064C7A8  48 00 01 A8 */	b lbl_8064C950
lbl_8064C7AC:
/* 8064C7AC  38 60 00 00 */	li r3, 0
/* 8064C7B0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8064C7B4  7C 04 07 74 */	extsb r4, r0
/* 8064C7B8  4B 9E 13 49 */	bl dComIfGs_offOneZoneSwitch__Fii
/* 8064C7BC  48 00 01 94 */	b lbl_8064C950
lbl_8064C7C0:
/* 8064C7C0  7F C3 F3 78 */	mr r3, r30
/* 8064C7C4  38 80 00 12 */	li r4, 0x12
/* 8064C7C8  4B FF 1E A1 */	bl checkBck__10daB_ZANT_cFi
/* 8064C7CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8064C7D0  41 82 00 48 */	beq lbl_8064C818
/* 8064C7D4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8064C7D8  38 63 00 0C */	addi r3, r3, 0xc
/* 8064C7DC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8064C7E0  4B CD BC 4D */	bl checkPass__12J3DFrameCtrlFf
/* 8064C7E4  2C 03 00 00 */	cmpwi r3, 0
/* 8064C7E8  41 82 00 30 */	beq lbl_8064C818
/* 8064C7EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070460@ha */
/* 8064C7F0  38 03 04 60 */	addi r0, r3, 0x0460 /* 0x00070460@l */
/* 8064C7F4  90 01 00 20 */	stw r0, 0x20(r1)
/* 8064C7F8  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8064C7FC  38 81 00 20 */	addi r4, r1, 0x20
/* 8064C800  38 A0 00 00 */	li r5, 0
/* 8064C804  38 C0 FF FF */	li r6, -1
/* 8064C808  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 8064C80C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8064C810  7D 89 03 A6 */	mtctr r12
/* 8064C814  4E 80 04 21 */	bctrl 
lbl_8064C818:
/* 8064C818  C0 3F 01 98 */	lfs f1, 0x198(r31)
/* 8064C81C  C0 1E 06 C0 */	lfs f0, 0x6c0(r30)
/* 8064C820  EC 41 00 32 */	fmuls f2, f1, f0
/* 8064C824  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8064C828  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8064C82C  40 80 00 08 */	bge lbl_8064C834
/* 8064C830  FC 40 00 90 */	fmr f2, f0
lbl_8064C834:
/* 8064C834  38 7E 07 8C */	addi r3, r30, 0x78c
/* 8064C838  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8064C83C  4B A2 97 1D */	bl SetWall__12dBgS_AcchCirFff
/* 8064C840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064C844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064C848  3B A3 09 78 */	addi r29, r3, 0x978
/* 8064C84C  7F A3 EB 78 */	mr r3, r29
/* 8064C850  38 80 00 14 */	li r4, 0x14
/* 8064C854  4B 9E 83 6D */	bl offSwitch__12dSv_danBit_cFi
/* 8064C858  7F A3 EB 78 */	mr r3, r29
/* 8064C85C  38 80 00 15 */	li r4, 0x15
/* 8064C860  4B 9E 83 61 */	bl offSwitch__12dSv_danBit_cFi
/* 8064C864  7F A3 EB 78 */	mr r3, r29
/* 8064C868  38 80 00 16 */	li r4, 0x16
/* 8064C86C  4B 9E 83 55 */	bl offSwitch__12dSv_danBit_cFi
/* 8064C870  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8064C874  2C 00 00 02 */	cmpwi r0, 2
/* 8064C878  41 82 00 30 */	beq lbl_8064C8A8
/* 8064C87C  40 80 00 10 */	bge lbl_8064C88C
/* 8064C880  2C 00 00 01 */	cmpwi r0, 1
/* 8064C884  40 80 00 14 */	bge lbl_8064C898
/* 8064C888  48 00 00 3C */	b lbl_8064C8C4
lbl_8064C88C:
/* 8064C88C  2C 00 00 04 */	cmpwi r0, 4
/* 8064C890  40 80 00 34 */	bge lbl_8064C8C4
/* 8064C894  48 00 00 24 */	b lbl_8064C8B8
lbl_8064C898:
/* 8064C898  7F A3 EB 78 */	mr r3, r29
/* 8064C89C  38 80 00 14 */	li r4, 0x14
/* 8064C8A0  4B 9E 82 F9 */	bl onSwitch__12dSv_danBit_cFi
/* 8064C8A4  48 00 00 20 */	b lbl_8064C8C4
lbl_8064C8A8:
/* 8064C8A8  7F A3 EB 78 */	mr r3, r29
/* 8064C8AC  38 80 00 15 */	li r4, 0x15
/* 8064C8B0  4B 9E 82 E9 */	bl onSwitch__12dSv_danBit_cFi
/* 8064C8B4  48 00 00 10 */	b lbl_8064C8C4
lbl_8064C8B8:
/* 8064C8B8  7F A3 EB 78 */	mr r3, r29
/* 8064C8BC  38 80 00 16 */	li r4, 0x16
/* 8064C8C0  4B 9E 82 D9 */	bl onSwitch__12dSv_danBit_cFi
lbl_8064C8C4:
/* 8064C8C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064C8C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064C8CC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8064C8D0  38 00 00 FF */	li r0, 0xff
/* 8064C8D4  90 01 00 08 */	stw r0, 8(r1)
/* 8064C8D8  38 80 00 00 */	li r4, 0
/* 8064C8DC  90 81 00 0C */	stw r4, 0xc(r1)
/* 8064C8E0  38 00 FF FF */	li r0, -1
/* 8064C8E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8064C8E8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8064C8EC  90 81 00 18 */	stw r4, 0x18(r1)
/* 8064C8F0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8064C8F4  80 9E 38 B4 */	lwz r4, 0x38b4(r30)
/* 8064C8F8  38 A0 00 00 */	li r5, 0
/* 8064C8FC  3C C0 00 01 */	lis r6, 0x0001 /* 0x000087B0@ha */
/* 8064C900  38 C6 87 B0 */	addi r6, r6, 0x87B0 /* 0x000087B0@l */
/* 8064C904  38 E1 00 24 */	addi r7, r1, 0x24
/* 8064C908  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8064C90C  39 20 00 00 */	li r9, 0
/* 8064C910  39 40 00 00 */	li r10, 0
/* 8064C914  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8064C918  4B A0 0B B5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8064C91C  90 7E 38 B4 */	stw r3, 0x38b4(r30)
/* 8064C920  48 00 00 30 */	b lbl_8064C950
lbl_8064C924:
/* 8064C924  7F C3 F3 78 */	mr r3, r30
/* 8064C928  4B FF 39 E9 */	bl setWaterBubble__10daB_ZANT_cFv
/* 8064C92C  7F C3 F3 78 */	mr r3, r30
/* 8064C930  4B FF 69 C9 */	bl checkSwimLinkNear__10daB_ZANT_cFv
/* 8064C934  38 60 00 00 */	li r3, 0
/* 8064C938  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8064C93C  7C 04 07 74 */	extsb r4, r0
/* 8064C940  4B 9E 11 5D */	bl dComIfGs_onOneZoneSwitch__Fii
/* 8064C944  48 00 00 0C */	b lbl_8064C950
lbl_8064C948:
/* 8064C948  7F C3 F3 78 */	mr r3, r30
/* 8064C94C  4B FF B0 E9 */	bl checkPillarSwing__10daB_ZANT_cFv
lbl_8064C950:
/* 8064C950  7F C3 F3 78 */	mr r3, r30
/* 8064C954  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064C958  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064C95C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8064C960  4B 9C DD D9 */	bl fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8064C964  7C 7B 1B 78 */	mr r27, r3
/* 8064C968  3B 80 00 00 */	li r28, 0
/* 8064C96C  3B 40 00 00 */	li r26, 0
/* 8064C970  88 1E 07 17 */	lbz r0, 0x717(r30)
/* 8064C974  28 00 00 00 */	cmplwi r0, 0
/* 8064C978  41 82 00 68 */	beq lbl_8064C9E0
/* 8064C97C  7C 60 07 34 */	extsh r0, r3
/* 8064C980  2C 00 28 00 */	cmpwi r0, 0x2800
/* 8064C984  40 81 00 08 */	ble lbl_8064C98C
/* 8064C988  3B 60 28 00 */	li r27, 0x2800
lbl_8064C98C:
/* 8064C98C  7F 60 07 34 */	extsh r0, r27
/* 8064C990  2C 00 D8 00 */	cmpwi r0, -10240
/* 8064C994  40 80 00 08 */	bge lbl_8064C99C
/* 8064C998  3B 60 D8 00 */	li r27, -10240
lbl_8064C99C:
/* 8064C99C  7F 7C 07 34 */	extsh r28, r27
/* 8064C9A0  7F 83 E3 78 */	mr r3, r28
/* 8064C9A4  4B D1 87 2D */	bl abs
/* 8064C9A8  2C 03 18 00 */	cmpwi r3, 0x1800
/* 8064C9AC  40 80 00 10 */	bge lbl_8064C9BC
/* 8064C9B0  3B 80 00 00 */	li r28, 0
/* 8064C9B4  7F 7A DB 78 */	mr r26, r27
/* 8064C9B8  48 00 00 28 */	b lbl_8064C9E0
lbl_8064C9BC:
/* 8064C9BC  7F 60 07 35 */	extsh. r0, r27
/* 8064C9C0  40 81 00 14 */	ble lbl_8064C9D4
/* 8064C9C4  3B 40 18 00 */	li r26, 0x1800
/* 8064C9C8  38 1C E8 00 */	addi r0, r28, -6144
/* 8064C9CC  7C 1C 07 34 */	extsh r28, r0
/* 8064C9D0  48 00 00 10 */	b lbl_8064C9E0
lbl_8064C9D4:
/* 8064C9D4  3B 40 E8 00 */	li r26, -6144
/* 8064C9D8  38 1C 18 00 */	addi r0, r28, 0x1800
/* 8064C9DC  7C 1C 07 34 */	extsh r28, r0
lbl_8064C9E0:
/* 8064C9E0  7F C3 F3 78 */	mr r3, r30
/* 8064C9E4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8064C9E8  4B 9C DD 29 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8064C9EC  3B 60 00 00 */	li r27, 0
/* 8064C9F0  88 1E 07 16 */	lbz r0, 0x716(r30)
/* 8064C9F4  28 00 00 00 */	cmplwi r0, 0
/* 8064C9F8  41 82 00 28 */	beq lbl_8064CA20
/* 8064C9FC  7C 60 07 34 */	extsh r0, r3
/* 8064CA00  2C 00 20 00 */	cmpwi r0, 0x2000
/* 8064CA04  40 81 00 08 */	ble lbl_8064CA0C
/* 8064CA08  38 60 20 00 */	li r3, 0x2000
lbl_8064CA0C:
/* 8064CA0C  7C 60 07 34 */	extsh r0, r3
/* 8064CA10  2C 00 E0 00 */	cmpwi r0, -8192
/* 8064CA14  40 80 00 08 */	bge lbl_8064CA1C
/* 8064CA18  38 60 E0 00 */	li r3, -8192
lbl_8064CA1C:
/* 8064CA1C  7C 7B 1B 78 */	mr r27, r3
lbl_8064CA20:
/* 8064CA20  38 7E 07 1E */	addi r3, r30, 0x71e
/* 8064CA24  7F 84 E3 78 */	mr r4, r28
/* 8064CA28  38 A0 00 08 */	li r5, 8
/* 8064CA2C  38 C0 04 00 */	li r6, 0x400
/* 8064CA30  38 E0 00 80 */	li r7, 0x80
/* 8064CA34  4B C2 3B 0D */	bl cLib_addCalcAngleS__FPsssss
/* 8064CA38  38 7E 07 20 */	addi r3, r30, 0x720
/* 8064CA3C  7F 64 DB 78 */	mr r4, r27
/* 8064CA40  38 A0 00 08 */	li r5, 8
/* 8064CA44  38 C0 04 00 */	li r6, 0x400
/* 8064CA48  38 E0 00 80 */	li r7, 0x80
/* 8064CA4C  4B C2 3A F5 */	bl cLib_addCalcAngleS__FPsssss
/* 8064CA50  38 7E 07 22 */	addi r3, r30, 0x722
/* 8064CA54  7F 44 D3 78 */	mr r4, r26
/* 8064CA58  38 A0 00 08 */	li r5, 8
/* 8064CA5C  38 C0 04 00 */	li r6, 0x400
/* 8064CA60  38 E0 00 80 */	li r7, 0x80
/* 8064CA64  4B C2 3A DD */	bl cLib_addCalcAngleS__FPsssss
/* 8064CA68  7F C3 F3 78 */	mr r3, r30
/* 8064CA6C  4B FF E8 05 */	bl calcMahojinAnime__10daB_ZANT_cFv
/* 8064CA70  38 00 00 01 */	li r0, 1
/* 8064CA74  3C 60 80 45 */	lis r3, mNoChangeRoom__20dStage_roomControl_c@ha /* 0x80450D68@ha */
/* 8064CA78  98 03 0D 68 */	stb r0, mNoChangeRoom__20dStage_roomControl_c@l(r3)  /* 0x80450D68@l */
/* 8064CA7C  88 1E 06 FB */	lbz r0, 0x6fb(r30)
/* 8064CA80  3C 60 80 65 */	lis r3, data_8064F030@ha /* 0x8064F030@ha */
/* 8064CA84  38 63 F0 30 */	addi r3, r3, data_8064F030@l /* 0x8064F030@l */
/* 8064CA88  7C 03 00 AE */	lbzx r0, r3, r0
/* 8064CA8C  3C 60 80 45 */	lis r3, data_804505F0@ha /* 0x804505F0@ha */
/* 8064CA90  98 03 05 F0 */	stb r0, data_804505F0@l(r3)  /* 0x804505F0@l */
/* 8064CA94  88 1E 06 FC */	lbz r0, 0x6fc(r30)
/* 8064CA98  28 00 00 00 */	cmplwi r0, 0
/* 8064CA9C  41 82 00 0C */	beq lbl_8064CAA8
/* 8064CAA0  38 60 00 00 */	li r3, 0
/* 8064CAA4  4B 9D A5 45 */	bl dStage_RoomCheck__FP11cBgS_GndChk
lbl_8064CAA8:
/* 8064CAA8  7F C3 F3 78 */	mr r3, r30
/* 8064CAAC  38 9E 09 A4 */	addi r4, r30, 0x9a4
/* 8064CAB0  4B 9C DC 1D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8064CAB4  88 1E 07 05 */	lbz r0, 0x705(r30)
/* 8064CAB8  28 00 00 00 */	cmplwi r0, 0
/* 8064CABC  40 82 00 18 */	bne lbl_8064CAD4
/* 8064CAC0  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 8064CAC4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064CAC8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064CACC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8064CAD0  4B A2 9F DD */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_8064CAD4:
/* 8064CAD4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8064CAD8  C0 1E 06 C4 */	lfs f0, 0x6c4(r30)
/* 8064CADC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8064CAE0  4B D1 55 CD */	bl __cvt_fp2unsigned
/* 8064CAE4  7C 7A 1B 78 */	mr r26, r3
/* 8064CAE8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8064CAEC  7C 03 07 74 */	extsb r3, r0
/* 8064CAF0  4B 9E 05 7D */	bl dComIfGp_getReverb__Fi
/* 8064CAF4  7C 65 1B 78 */	mr r5, r3
/* 8064CAF8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8064CAFC  7F 44 D3 78 */	mr r4, r26
/* 8064CB00  4B 9C 45 B1 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8064CB04  39 61 00 50 */	addi r11, r1, 0x50
/* 8064CB08  4B D1 57 15 */	bl _restgpr_26
/* 8064CB0C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8064CB10  7C 08 03 A6 */	mtlr r0
/* 8064CB14  38 21 00 50 */	addi r1, r1, 0x50
/* 8064CB18  4E 80 00 20 */	blr 
