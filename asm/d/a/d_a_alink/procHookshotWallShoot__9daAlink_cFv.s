lbl_8010D6CC:
/* 8010D6CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010D6D0  7C 08 02 A6 */	mflr r0
/* 8010D6D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010D6D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8010D6DC  48 25 4A F5 */	bl _savegpr_26
/* 8010D6E0  7C 7D 1B 78 */	mr r29, r3
/* 8010D6E4  4B FF B3 35 */	bl checkHookshotWait__9daAlink_cCFv
/* 8010D6E8  2C 03 00 00 */	cmpwi r3, 0
/* 8010D6EC  41 82 00 10 */	beq lbl_8010D6FC
/* 8010D6F0  7F A3 EB 78 */	mr r3, r29
/* 8010D6F4  38 80 00 12 */	li r4, 0x12
/* 8010D6F8  4B FA 5B 59 */	bl setDoStatus__9daAlink_cFUc
lbl_8010D6FC:
/* 8010D6FC  7F A3 EB 78 */	mr r3, r29
/* 8010D700  4B FF E3 6D */	bl commonHookshotWallWait__9daAlink_cFv
/* 8010D704  2C 03 00 00 */	cmpwi r3, 0
/* 8010D708  41 82 00 0C */	beq lbl_8010D714
/* 8010D70C  38 60 00 01 */	li r3, 1
/* 8010D710  48 00 02 14 */	b lbl_8010D924
lbl_8010D714:
/* 8010D714  38 00 00 00 */	li r0, 0
/* 8010D718  98 1D 20 68 */	stb r0, 0x2068(r29)
/* 8010D71C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010D720  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010D724  80 1C 5F 18 */	lwz r0, 0x5f18(r28)
/* 8010D728  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 8010D72C  90 1C 5F 18 */	stw r0, 0x5f18(r28)
/* 8010D730  A8 1D 30 8E */	lha r0, 0x308e(r29)
/* 8010D734  2C 00 00 00 */	cmpwi r0, 0
/* 8010D738  41 82 00 20 */	beq lbl_8010D758
/* 8010D73C  7F A3 EB 78 */	mr r3, r29
/* 8010D740  4B FF B2 D9 */	bl checkHookshotWait__9daAlink_cCFv
/* 8010D744  2C 03 00 00 */	cmpwi r3, 0
/* 8010D748  41 82 00 10 */	beq lbl_8010D758
/* 8010D74C  A8 7D 30 8E */	lha r3, 0x308e(r29)
/* 8010D750  38 03 FF FF */	addi r0, r3, -1
/* 8010D754  B0 1D 30 8E */	sth r0, 0x308e(r29)
lbl_8010D758:
/* 8010D758  3B E0 00 00 */	li r31, 0
/* 8010D75C  7F A3 EB 78 */	mr r3, r29
/* 8010D760  4B FF BB 25 */	bl checkUpperItemActionHookshot__9daAlink_cFv
/* 8010D764  2C 03 00 00 */	cmpwi r3, 0
/* 8010D768  40 82 01 B8 */	bne lbl_8010D920
/* 8010D76C  AB DD 04 E6 */	lha r30, 0x4e6(r29)
/* 8010D770  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 8010D774  B0 1D 05 9C */	sth r0, 0x59c(r29)
/* 8010D778  A8 1D 30 10 */	lha r0, 0x3010(r29)
/* 8010D77C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8010D780  83 7D 27 E0 */	lwz r27, 0x27e0(r29)
/* 8010D784  3B 40 00 01 */	li r26, 1
/* 8010D788  7F 63 DB 78 */	mr r3, r27
/* 8010D78C  4B F6 60 59 */	bl LockonTruth__12dAttention_cFv
/* 8010D790  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010D794  40 82 00 14 */	bne lbl_8010D7A8
/* 8010D798  80 1B 03 34 */	lwz r0, 0x334(r27)
/* 8010D79C  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 8010D7A0  40 82 00 08 */	bne lbl_8010D7A8
/* 8010D7A4  3B 40 00 00 */	li r26, 0
lbl_8010D7A8:
/* 8010D7A8  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8010D7AC  40 82 00 70 */	bne lbl_8010D81C
/* 8010D7B0  A8 1D 30 8E */	lha r0, 0x308e(r29)
/* 8010D7B4  2C 00 00 00 */	cmpwi r0, 0
/* 8010D7B8  40 82 00 64 */	bne lbl_8010D81C
/* 8010D7BC  7F A3 EB 78 */	mr r3, r29
/* 8010D7C0  4B FF B2 59 */	bl checkHookshotWait__9daAlink_cCFv
/* 8010D7C4  2C 03 00 00 */	cmpwi r3, 0
/* 8010D7C8  41 82 00 3C */	beq lbl_8010D804
/* 8010D7CC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010D7D0  D0 1D 1F DC */	stfs f0, 0x1fdc(r29)
/* 8010D7D4  D0 1D 1F E0 */	stfs f0, 0x1fe0(r29)
/* 8010D7D8  80 7D 1F 2C */	lwz r3, 0x1f2c(r29)
/* 8010D7DC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8010D7E0  A8 1D 30 0C */	lha r0, 0x300c(r29)
/* 8010D7E4  2C 00 00 00 */	cmpwi r0, 0
/* 8010D7E8  41 82 00 28 */	beq lbl_8010D810
/* 8010D7EC  7F A3 EB 78 */	mr r3, r29
/* 8010D7F0  4B FC 10 B1 */	bl setBodyAngleToCamera__9daAlink_cFv
/* 8010D7F4  2C 03 00 00 */	cmpwi r3, 0
/* 8010D7F8  41 82 00 18 */	beq lbl_8010D810
/* 8010D7FC  3B E0 00 01 */	li r31, 1
/* 8010D800  48 00 00 10 */	b lbl_8010D810
lbl_8010D804:
/* 8010D804  80 1C 5F 18 */	lwz r0, 0x5f18(r28)
/* 8010D808  64 00 00 04 */	oris r0, r0, 4
/* 8010D80C  90 1C 5F 18 */	stw r0, 0x5f18(r28)
lbl_8010D810:
/* 8010D810  38 00 00 01 */	li r0, 1
/* 8010D814  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 8010D818  48 00 00 A4 */	b lbl_8010D8BC
lbl_8010D81C:
/* 8010D81C  80 1D 27 EC */	lwz r0, 0x27ec(r29)
/* 8010D820  28 00 00 00 */	cmplwi r0, 0
/* 8010D824  40 82 00 2C */	bne lbl_8010D850
/* 8010D828  A8 1D 30 1A */	lha r0, 0x301a(r29)
/* 8010D82C  2C 00 00 00 */	cmpwi r0, 0
/* 8010D830  40 82 00 20 */	bne lbl_8010D850
/* 8010D834  B3 DD 04 E6 */	sth r30, 0x4e6(r29)
/* 8010D838  7F A3 EB 78 */	mr r3, r29
/* 8010D83C  38 80 00 00 */	li r4, 0
/* 8010D840  38 A0 00 00 */	li r5, 0
/* 8010D844  38 C0 00 00 */	li r6, 0
/* 8010D848  4B FF F9 2D */	bl procHookshotWallWaitInit__9daAlink_cFisi
/* 8010D84C  48 00 00 D8 */	b lbl_8010D924
lbl_8010D850:
/* 8010D850  7F A3 EB 78 */	mr r3, r29
/* 8010D854  4B FF B1 C5 */	bl checkHookshotWait__9daAlink_cCFv
/* 8010D858  2C 03 00 00 */	cmpwi r3, 0
/* 8010D85C  41 82 00 58 */	beq lbl_8010D8B4
/* 8010D860  7F A3 EB 78 */	mr r3, r29
/* 8010D864  38 9D 1F D0 */	addi r4, r29, 0x1fd0
/* 8010D868  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8010D86C  4B FF 44 89 */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
/* 8010D870  A8 1D 30 0C */	lha r0, 0x300c(r29)
/* 8010D874  2C 00 00 00 */	cmpwi r0, 0
/* 8010D878  40 82 00 3C */	bne lbl_8010D8B4
/* 8010D87C  7F A3 EB 78 */	mr r3, r29
/* 8010D880  38 80 00 00 */	li r4, 0
/* 8010D884  4B FA DA 2D */	bl setBodyAngleXReadyAnime__9daAlink_cFi
/* 8010D888  7F A3 EB 78 */	mr r3, r29
/* 8010D88C  38 80 00 00 */	li r4, 0
/* 8010D890  4B FA 5E A5 */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 8010D894  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010D898  40 82 00 1C */	bne lbl_8010D8B4
/* 8010D89C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8010D8A0  7F C4 F3 78 */	mr r4, r30
/* 8010D8A4  38 A0 00 04 */	li r5, 4
/* 8010D8A8  38 C0 0C 00 */	li r6, 0xc00
/* 8010D8AC  38 E0 01 80 */	li r7, 0x180
/* 8010D8B0  48 16 2C 91 */	bl cLib_addCalcAngleS__FPsssss
lbl_8010D8B4:
/* 8010D8B4  38 00 00 00 */	li r0, 0
/* 8010D8B8  B0 1D 30 0C */	sth r0, 0x300c(r29)
lbl_8010D8BC:
/* 8010D8BC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8010D8C0  7C 1E 00 50 */	subf r0, r30, r0
/* 8010D8C4  7C 00 07 34 */	extsh r0, r0
/* 8010D8C8  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8010D8CC  40 81 00 10 */	ble lbl_8010D8DC
/* 8010D8D0  38 1E 40 00 */	addi r0, r30, 0x4000
/* 8010D8D4  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8010D8D8  48 00 00 14 */	b lbl_8010D8EC
lbl_8010D8DC:
/* 8010D8DC  2C 00 C0 00 */	cmpwi r0, -16384
/* 8010D8E0  40 80 00 0C */	bge lbl_8010D8EC
/* 8010D8E4  38 1E C0 00 */	addi r0, r30, -16384
/* 8010D8E8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_8010D8EC:
/* 8010D8EC  2C 1F 00 00 */	cmpwi r31, 0
/* 8010D8F0  41 82 00 0C */	beq lbl_8010D8FC
/* 8010D8F4  7F A3 EB 78 */	mr r3, r29
/* 8010D8F8  4B FF B4 BD */	bl setHookshotSight__9daAlink_cFv
lbl_8010D8FC:
/* 8010D8FC  A8 1D 05 9C */	lha r0, 0x59c(r29)
/* 8010D900  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 8010D904  38 00 00 00 */	li r0, 0
/* 8010D908  B0 1D 05 9C */	sth r0, 0x59c(r29)
/* 8010D90C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8010D910  B0 1D 31 0C */	sth r0, 0x310c(r29)
/* 8010D914  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8010D918  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 8010D91C  B3 DD 04 E6 */	sth r30, 0x4e6(r29)
lbl_8010D920:
/* 8010D920  38 60 00 01 */	li r3, 1
lbl_8010D924:
/* 8010D924  39 61 00 20 */	addi r11, r1, 0x20
/* 8010D928  48 25 48 F5 */	bl _restgpr_26
/* 8010D92C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010D930  7C 08 03 A6 */	mtlr r0
/* 8010D934  38 21 00 20 */	addi r1, r1, 0x20
/* 8010D938  4E 80 00 20 */	blr 
