lbl_80D0D6B8:
/* 80D0D6B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D0D6BC  7C 08 02 A6 */	mflr r0
/* 80D0D6C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D0D6C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D0D6C8  4B 65 4B 05 */	bl _savegpr_25
/* 80D0D6CC  7C 7E 1B 78 */	mr r30, r3
/* 80D0D6D0  3C 60 80 D1 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80D0E658@ha */
/* 80D0D6D4  3B E3 E6 58 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80D0E658@l */
/* 80D0D6D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0D6DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0D6E0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D0D6E4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D0D6E8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D0D6EC  7C 05 07 74 */	extsb r5, r0
/* 80D0D6F0  4B 32 7C 71 */	bl isSwitch__10dSv_info_cCFii
/* 80D0D6F4  2C 03 00 00 */	cmpwi r3, 0
/* 80D0D6F8  41 82 00 18 */	beq lbl_80D0D710
/* 80D0D6FC  38 00 00 00 */	li r0, 0
/* 80D0D700  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80D0D704  38 00 00 03 */	li r0, 3
/* 80D0D708  98 1E 05 AC */	stb r0, 0x5ac(r30)
/* 80D0D70C  48 00 00 2C */	b lbl_80D0D738
lbl_80D0D710:
/* 80D0D710  38 00 15 7C */	li r0, 0x157c
/* 80D0D714  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80D0D718  A8 7E 06 08 */	lha r3, 0x608(r30)
/* 80D0D71C  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80D0D720  7C 03 00 50 */	subf r0, r3, r0
/* 80D0D724  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80D0D728  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80D0D72C  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 80D0D730  38 00 00 00 */	li r0, 0
/* 80D0D734  98 1E 05 AC */	stb r0, 0x5ac(r30)
lbl_80D0D738:
/* 80D0D738  7F C3 F3 78 */	mr r3, r30
/* 80D0D73C  4B FF FE DD */	bl initBaseMtx__13daObjThDoor_cFv
/* 80D0D740  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D0D744  38 03 00 24 */	addi r0, r3, 0x24
/* 80D0D748  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D0D74C  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80D0D750  38 80 00 FF */	li r4, 0xff
/* 80D0D754  38 A0 00 FF */	li r5, 0xff
/* 80D0D758  7F C6 F3 78 */	mr r6, r30
/* 80D0D75C  4B 37 61 05 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D0D760  3B 20 00 00 */	li r25, 0
/* 80D0D764  3B A0 00 00 */	li r29, 0
/* 80D0D768  3B 7E 06 0C */	addi r27, r30, 0x60c
/* 80D0D76C  3C 60 80 D1 */	lis r3, doorCoHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80D0D59C@ha */
/* 80D0D770  3B 83 D5 9C */	addi r28, r3, doorCoHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80D0D59C@l */
lbl_80D0D774:
/* 80D0D774  7F 5E EA 14 */	add r26, r30, r29
/* 80D0D778  38 7A 06 48 */	addi r3, r26, 0x648
/* 80D0D77C  38 9F 00 2C */	addi r4, r31, 0x2c
/* 80D0D780  4B 37 71 35 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D0D784  93 7A 06 8C */	stw r27, 0x68c(r26)
/* 80D0D788  93 9A 07 38 */	stw r28, 0x738(r26)
/* 80D0D78C  3B 39 00 01 */	addi r25, r25, 1
/* 80D0D790  2C 19 00 02 */	cmpwi r25, 2
/* 80D0D794  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80D0D798  41 80 FF DC */	blt lbl_80D0D774
/* 80D0D79C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D0D7A0  80 83 00 04 */	lwz r4, 4(r3)
/* 80D0D7A4  7F C3 F3 78 */	mr r3, r30
/* 80D0D7A8  4B 30 CD D1 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D0D7AC  38 00 00 FF */	li r0, 0xff
/* 80D0D7B0  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80D0D7B4  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80D0D7B8  90 1E 01 00 */	stw r0, 0x100(r30)
/* 80D0D7BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0D7C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0D7C4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80D0D7C8  7F C4 F3 78 */	mr r4, r30
/* 80D0D7CC  80 BF 00 24 */	lwz r5, 0x24(r31)
/* 80D0D7D0  38 C0 00 FF */	li r6, 0xff
/* 80D0D7D4  4B 33 9F 85 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D0D7D8  B0 7E 05 AE */	sth r3, 0x5ae(r30)
/* 80D0D7DC  38 60 00 01 */	li r3, 1
/* 80D0D7E0  39 61 00 30 */	addi r11, r1, 0x30
/* 80D0D7E4  4B 65 4A 35 */	bl _restgpr_25
/* 80D0D7E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D0D7EC  7C 08 03 A6 */	mtlr r0
/* 80D0D7F0  38 21 00 30 */	addi r1, r1, 0x30
/* 80D0D7F4  4E 80 00 20 */	blr 
