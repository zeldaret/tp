lbl_8010CD60:
/* 8010CD60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010CD64  7C 08 02 A6 */	mflr r0
/* 8010CD68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010CD6C  39 61 00 20 */	addi r11, r1, 0x20
/* 8010CD70  48 25 54 69 */	bl _savegpr_28
/* 8010CD74  7C 7F 1B 78 */	mr r31, r3
/* 8010CD78  4B FF BC A1 */	bl checkHookshotWait__9daAlink_cCFv
/* 8010CD7C  2C 03 00 00 */	cmpwi r3, 0
/* 8010CD80  41 82 00 10 */	beq lbl_8010CD90
/* 8010CD84  7F E3 FB 78 */	mr r3, r31
/* 8010CD88  38 80 00 12 */	li r4, 0x12
/* 8010CD8C  4B FA 64 C5 */	bl setDoStatus__9daAlink_cFUc
lbl_8010CD90:
/* 8010CD90  7F E3 FB 78 */	mr r3, r31
/* 8010CD94  4B FF EB D9 */	bl commonHookshotRoofWait__9daAlink_cFv
/* 8010CD98  2C 03 00 00 */	cmpwi r3, 0
/* 8010CD9C  41 82 00 0C */	beq lbl_8010CDA8
/* 8010CDA0  38 60 00 01 */	li r3, 1
/* 8010CDA4  48 00 01 B0 */	b lbl_8010CF54
lbl_8010CDA8:
/* 8010CDA8  7F E3 FB 78 */	mr r3, r31
/* 8010CDAC  4B FF BC 6D */	bl checkHookshotWait__9daAlink_cCFv
/* 8010CDB0  2C 03 00 00 */	cmpwi r3, 0
/* 8010CDB4  41 82 00 10 */	beq lbl_8010CDC4
/* 8010CDB8  7F E3 FB 78 */	mr r3, r31
/* 8010CDBC  38 80 00 00 */	li r4, 0
/* 8010CDC0  4B FA 69 75 */	bl setShapeAngleToAtnActor__9daAlink_cFi
lbl_8010CDC4:
/* 8010CDC4  38 00 00 00 */	li r0, 0
/* 8010CDC8  98 1F 20 68 */	stb r0, 0x2068(r31)
/* 8010CDCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010CDD0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8010CDD4  80 1E 5F 18 */	lwz r0, 0x5f18(r30)
/* 8010CDD8  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 8010CDDC  90 1E 5F 18 */	stw r0, 0x5f18(r30)
/* 8010CDE0  A8 1F 30 8E */	lha r0, 0x308e(r31)
/* 8010CDE4  2C 00 00 00 */	cmpwi r0, 0
/* 8010CDE8  41 82 00 20 */	beq lbl_8010CE08
/* 8010CDEC  7F E3 FB 78 */	mr r3, r31
/* 8010CDF0  4B FF BC 29 */	bl checkHookshotWait__9daAlink_cCFv
/* 8010CDF4  2C 03 00 00 */	cmpwi r3, 0
/* 8010CDF8  41 82 00 10 */	beq lbl_8010CE08
/* 8010CDFC  A8 7F 30 8E */	lha r3, 0x308e(r31)
/* 8010CE00  38 03 FF FF */	addi r0, r3, -1
/* 8010CE04  B0 1F 30 8E */	sth r0, 0x308e(r31)
lbl_8010CE08:
/* 8010CE08  7F E3 FB 78 */	mr r3, r31
/* 8010CE0C  4B FF C4 79 */	bl checkUpperItemActionHookshot__9daAlink_cFv
/* 8010CE10  2C 03 00 00 */	cmpwi r3, 0
/* 8010CE14  40 82 01 3C */	bne lbl_8010CF50
/* 8010CE18  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 8010CE1C  B0 1F 05 9C */	sth r0, 0x59c(r31)
/* 8010CE20  83 BF 27 E0 */	lwz r29, 0x27e0(r31)
/* 8010CE24  3B 80 00 01 */	li r28, 1
/* 8010CE28  7F A3 EB 78 */	mr r3, r29
/* 8010CE2C  4B F6 69 B9 */	bl LockonTruth__12dAttention_cFv
/* 8010CE30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010CE34  40 82 00 14 */	bne lbl_8010CE48
/* 8010CE38  80 1D 03 34 */	lwz r0, 0x334(r29)
/* 8010CE3C  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 8010CE40  40 82 00 08 */	bne lbl_8010CE48
/* 8010CE44  3B 80 00 00 */	li r28, 0
lbl_8010CE48:
/* 8010CE48  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8010CE4C  40 82 00 74 */	bne lbl_8010CEC0
/* 8010CE50  A8 1F 30 8E */	lha r0, 0x308e(r31)
/* 8010CE54  2C 00 00 00 */	cmpwi r0, 0
/* 8010CE58  40 82 00 68 */	bne lbl_8010CEC0
/* 8010CE5C  7F E3 FB 78 */	mr r3, r31
/* 8010CE60  4B FF BB B9 */	bl checkHookshotWait__9daAlink_cCFv
/* 8010CE64  2C 03 00 00 */	cmpwi r3, 0
/* 8010CE68  41 82 00 40 */	beq lbl_8010CEA8
/* 8010CE6C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010CE70  D0 1F 1F DC */	stfs f0, 0x1fdc(r31)
/* 8010CE74  D0 1F 1F E0 */	stfs f0, 0x1fe0(r31)
/* 8010CE78  80 7F 1F 2C */	lwz r3, 0x1f2c(r31)
/* 8010CE7C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8010CE80  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8010CE84  2C 00 00 00 */	cmpwi r0, 0
/* 8010CE88  41 82 00 2C */	beq lbl_8010CEB4
/* 8010CE8C  7F E3 FB 78 */	mr r3, r31
/* 8010CE90  4B FC 1A 11 */	bl setBodyAngleToCamera__9daAlink_cFv
/* 8010CE94  2C 03 00 00 */	cmpwi r3, 0
/* 8010CE98  41 82 00 1C */	beq lbl_8010CEB4
/* 8010CE9C  7F E3 FB 78 */	mr r3, r31
/* 8010CEA0  4B FF BF 15 */	bl setHookshotSight__9daAlink_cFv
/* 8010CEA4  48 00 00 10 */	b lbl_8010CEB4
lbl_8010CEA8:
/* 8010CEA8  80 1E 5F 18 */	lwz r0, 0x5f18(r30)
/* 8010CEAC  64 00 00 04 */	oris r0, r0, 4
/* 8010CEB0  90 1E 5F 18 */	stw r0, 0x5f18(r30)
lbl_8010CEB4:
/* 8010CEB4  38 00 00 01 */	li r0, 1
/* 8010CEB8  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8010CEBC  48 00 00 84 */	b lbl_8010CF40
lbl_8010CEC0:
/* 8010CEC0  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 8010CEC4  28 00 00 00 */	cmplwi r0, 0
/* 8010CEC8  40 82 00 28 */	bne lbl_8010CEF0
/* 8010CECC  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 8010CED0  2C 00 00 00 */	cmpwi r0, 0
/* 8010CED4  40 82 00 1C */	bne lbl_8010CEF0
/* 8010CED8  7F E3 FB 78 */	mr r3, r31
/* 8010CEDC  38 80 00 00 */	li r4, 0
/* 8010CEE0  80 BF 28 58 */	lwz r5, 0x2858(r31)
/* 8010CEE4  38 C0 00 00 */	li r6, 0
/* 8010CEE8  4B FF F9 49 */	bl procHookshotRoofWaitInit__9daAlink_cFiP10fopAc_ac_ci
/* 8010CEEC  48 00 00 68 */	b lbl_8010CF54
lbl_8010CEF0:
/* 8010CEF0  7F E3 FB 78 */	mr r3, r31
/* 8010CEF4  4B FF BB 25 */	bl checkHookshotWait__9daAlink_cCFv
/* 8010CEF8  2C 03 00 00 */	cmpwi r3, 0
/* 8010CEFC  41 82 00 3C */	beq lbl_8010CF38
/* 8010CF00  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010CF04  D0 1F 1F DC */	stfs f0, 0x1fdc(r31)
/* 8010CF08  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8010CF0C  2C 00 00 00 */	cmpwi r0, 0
/* 8010CF10  40 82 00 1C */	bne lbl_8010CF2C
/* 8010CF14  7F E3 FB 78 */	mr r3, r31
/* 8010CF18  38 80 00 00 */	li r4, 0
/* 8010CF1C  4B FA E3 95 */	bl setBodyAngleXReadyAnime__9daAlink_cFi
/* 8010CF20  7F E3 FB 78 */	mr r3, r31
/* 8010CF24  4B FF E4 89 */	bl hookshotRoofTurn__9daAlink_cFv
/* 8010CF28  48 00 00 10 */	b lbl_8010CF38
lbl_8010CF2C:
/* 8010CF2C  7F E3 FB 78 */	mr r3, r31
/* 8010CF30  38 80 00 00 */	li r4, 0
/* 8010CF34  4B FA A2 5D */	bl cancelItemUseQuake__9daAlink_cFi
lbl_8010CF38:
/* 8010CF38  38 00 00 00 */	li r0, 0
/* 8010CF3C  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_8010CF40:
/* 8010CF40  A8 1F 05 9C */	lha r0, 0x59c(r31)
/* 8010CF44  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8010CF48  38 00 00 00 */	li r0, 0
/* 8010CF4C  B0 1F 05 9C */	sth r0, 0x59c(r31)
lbl_8010CF50:
/* 8010CF50  38 60 00 01 */	li r3, 1
lbl_8010CF54:
/* 8010CF54  39 61 00 20 */	addi r11, r1, 0x20
/* 8010CF58  48 25 52 CD */	bl _restgpr_28
/* 8010CF5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010CF60  7C 08 03 A6 */	mtlr r0
/* 8010CF64  38 21 00 20 */	addi r1, r1, 0x20
/* 8010CF68  4E 80 00 20 */	blr 
