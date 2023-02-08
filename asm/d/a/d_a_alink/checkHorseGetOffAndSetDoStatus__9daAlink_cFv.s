lbl_800EF6B0:
/* 800EF6B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EF6B4  7C 08 02 A6 */	mflr r0
/* 800EF6B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800EF6BC  39 61 00 20 */	addi r11, r1, 0x20
/* 800EF6C0  48 27 2B 19 */	bl _savegpr_28
/* 800EF6C4  7C 7E 1B 78 */	mr r30, r3
/* 800EF6C8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800EF6CC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800EF6D0  83 84 5D B8 */	lwz r28, 0x5db8(r4)
/* 800EF6D4  3B E0 00 00 */	li r31, 0
/* 800EF6D8  4B FF FE C1 */	bl checkHorseGetOff__9daAlink_cFv
/* 800EF6DC  7C 7D 1B 78 */	mr r29, r3
/* 800EF6E0  80 7E 28 18 */	lwz r3, 0x2818(r30)
/* 800EF6E4  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 800EF6E8  FC 00 02 10 */	fabs f0, f0
/* 800EF6EC  FC 20 00 18 */	frsp f1, f0
/* 800EF6F0  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800EF6F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EF6F8  40 80 00 14 */	bge lbl_800EF70C
/* 800EF6FC  7F C3 F3 78 */	mr r3, r30
/* 800EF700  4B FC 53 09 */	bl setTalkStatus__9daAlink_cFv
/* 800EF704  2C 03 00 00 */	cmpwi r3, 0
/* 800EF708  40 82 01 60 */	bne lbl_800EF868
lbl_800EF70C:
/* 800EF70C  7F C3 F3 78 */	mr r3, r30
/* 800EF710  4B FF D7 F5 */	bl checkHorseLieAnime__9daAlink_cCFv
/* 800EF714  2C 03 00 00 */	cmpwi r3, 0
/* 800EF718  41 82 00 30 */	beq lbl_800EF748
/* 800EF71C  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800EF720  74 00 41 80 */	andis. r0, r0, 0x4180
/* 800EF724  40 82 00 14 */	bne lbl_800EF738
/* 800EF728  7F C3 F3 78 */	mr r3, r30
/* 800EF72C  38 80 00 32 */	li r4, 0x32
/* 800EF730  4B FC 3B 21 */	bl setDoStatus__9daAlink_cFUc
/* 800EF734  48 00 01 34 */	b lbl_800EF868
lbl_800EF738:
/* 800EF738  7F C3 F3 78 */	mr r3, r30
/* 800EF73C  38 80 00 8C */	li r4, 0x8c
/* 800EF740  4B FC 3B 11 */	bl setDoStatus__9daAlink_cFUc
/* 800EF744  48 00 01 24 */	b lbl_800EF868
lbl_800EF748:
/* 800EF748  7F C3 F3 78 */	mr r3, r30
/* 800EF74C  4B FF D9 29 */	bl checkHorseNoUpperAnime__9daAlink_cCFv
/* 800EF750  2C 03 00 00 */	cmpwi r3, 0
/* 800EF754  40 82 00 14 */	bne lbl_800EF768
/* 800EF758  7F C3 F3 78 */	mr r3, r30
/* 800EF75C  4B FC 9B E5 */	bl checkEquipAnime__9daAlink_cCFv
/* 800EF760  2C 03 00 00 */	cmpwi r3, 0
/* 800EF764  41 82 01 04 */	beq lbl_800EF868
lbl_800EF768:
/* 800EF768  88 1E 2F B2 */	lbz r0, 0x2fb2(r30)
/* 800EF76C  28 00 00 00 */	cmplwi r0, 0
/* 800EF770  40 82 00 F8 */	bne lbl_800EF868
/* 800EF774  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800EF778  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800EF77C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EF780  41 81 00 E8 */	bgt lbl_800EF868
/* 800EF784  2C 1D 00 00 */	cmpwi r29, 0
/* 800EF788  41 82 00 E0 */	beq lbl_800EF868
/* 800EF78C  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800EF790  28 00 00 FF */	cmplwi r0, 0xff
/* 800EF794  40 82 00 78 */	bne lbl_800EF80C
/* 800EF798  7F C3 F3 78 */	mr r3, r30
/* 800EF79C  4B FF F9 FD */	bl checkHorseGetOffDirection__9daAlink_cFv
/* 800EF7A0  7C 7F 1B 78 */	mr r31, r3
/* 800EF7A4  2C 1F 00 02 */	cmpwi r31, 2
/* 800EF7A8  40 82 00 2C */	bne lbl_800EF7D4
/* 800EF7AC  7F C3 F3 78 */	mr r3, r30
/* 800EF7B0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800EF7B4  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800EF7B8  7D 89 03 A6 */	mtctr r12
/* 800EF7BC  4E 80 04 21 */	bctrl 
/* 800EF7C0  28 03 00 00 */	cmplwi r3, 0
/* 800EF7C4  41 82 00 A4 */	beq lbl_800EF868
/* 800EF7C8  80 1C 17 48 */	lwz r0, 0x1748(r28)
/* 800EF7CC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800EF7D0  41 82 00 98 */	beq lbl_800EF868
lbl_800EF7D4:
/* 800EF7D4  88 1E 2F B4 */	lbz r0, 0x2fb4(r30)
/* 800EF7D8  28 00 00 00 */	cmplwi r0, 0
/* 800EF7DC  40 82 00 8C */	bne lbl_800EF868
/* 800EF7E0  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800EF7E4  74 00 41 80 */	andis. r0, r0, 0x4180
/* 800EF7E8  40 82 00 14 */	bne lbl_800EF7FC
/* 800EF7EC  7F C3 F3 78 */	mr r3, r30
/* 800EF7F0  38 80 00 32 */	li r4, 0x32
/* 800EF7F4  4B FC 3A 5D */	bl setDoStatus__9daAlink_cFUc
/* 800EF7F8  48 00 00 70 */	b lbl_800EF868
lbl_800EF7FC:
/* 800EF7FC  7F C3 F3 78 */	mr r3, r30
/* 800EF800  38 80 00 8C */	li r4, 0x8c
/* 800EF804  4B FC 3A 4D */	bl setDoStatus__9daAlink_cFUc
/* 800EF808  48 00 00 60 */	b lbl_800EF868
lbl_800EF80C:
/* 800EF80C  7F C3 F3 78 */	mr r3, r30
/* 800EF810  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800EF814  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800EF818  7D 89 03 A6 */	mtctr r12
/* 800EF81C  4E 80 04 21 */	bctrl 
/* 800EF820  28 03 00 00 */	cmplwi r3, 0
/* 800EF824  41 82 00 38 */	beq lbl_800EF85C
/* 800EF828  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800EF82C  74 00 41 80 */	andis. r0, r0, 0x4180
/* 800EF830  40 82 00 2C */	bne lbl_800EF85C
/* 800EF834  88 1E 2F B4 */	lbz r0, 0x2fb4(r30)
/* 800EF838  28 00 00 00 */	cmplwi r0, 0
/* 800EF83C  40 82 00 20 */	bne lbl_800EF85C
/* 800EF840  80 1C 17 48 */	lwz r0, 0x1748(r28)
/* 800EF844  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800EF848  41 82 00 14 */	beq lbl_800EF85C
/* 800EF84C  7F C3 F3 78 */	mr r3, r30
/* 800EF850  38 80 00 32 */	li r4, 0x32
/* 800EF854  4B FC 39 FD */	bl setDoStatus__9daAlink_cFUc
/* 800EF858  48 00 00 10 */	b lbl_800EF868
lbl_800EF85C:
/* 800EF85C  7F C3 F3 78 */	mr r3, r30
/* 800EF860  38 80 00 04 */	li r4, 4
/* 800EF864  4B FC 39 ED */	bl setDoStatus__9daAlink_cFUc
lbl_800EF868:
/* 800EF868  7F E3 FB 78 */	mr r3, r31
/* 800EF86C  39 61 00 20 */	addi r11, r1, 0x20
/* 800EF870  48 27 29 B5 */	bl _restgpr_28
/* 800EF874  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EF878  7C 08 03 A6 */	mtlr r0
/* 800EF87C  38 21 00 20 */	addi r1, r1, 0x20
/* 800EF880  4E 80 00 20 */	blr 
