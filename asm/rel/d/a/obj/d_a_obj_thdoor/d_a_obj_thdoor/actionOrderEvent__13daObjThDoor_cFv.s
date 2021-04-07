lbl_80D0DCC8:
/* 80D0DCC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0DCCC  7C 08 02 A6 */	mflr r0
/* 80D0DCD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0DCD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0DCD8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D0DCDC  7C 7E 1B 78 */	mr r30, r3
/* 80D0DCE0  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80D0DCE4  28 00 00 02 */	cmplwi r0, 2
/* 80D0DCE8  40 82 00 68 */	bne lbl_80D0DD50
/* 80D0DCEC  38 00 00 02 */	li r0, 2
/* 80D0DCF0  98 1E 05 AC */	stb r0, 0x5ac(r30)
/* 80D0DCF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0DCF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0DCFC  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80D0DD00  38 7F 40 C0 */	addi r3, r31, 0x40c0
/* 80D0DD04  3C 80 80 D1 */	lis r4, l_staffName@ha /* 0x80D0E680@ha */
/* 80D0DD08  38 84 E6 80 */	addi r4, r4, l_staffName@l /* 0x80D0E680@l */
/* 80D0DD0C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D0DD10  38 A0 00 00 */	li r5, 0
/* 80D0DD14  38 C0 00 00 */	li r6, 0
/* 80D0DD18  4B 33 9E 05 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D0DD1C  90 7E 05 B0 */	stw r3, 0x5b0(r30)
/* 80D0DD20  7F C3 F3 78 */	mr r3, r30
/* 80D0DD24  48 00 01 11 */	bl demoProc__13daObjThDoor_cFv
/* 80D0DD28  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D0DD2C  28 03 00 00 */	cmplwi r3, 0
/* 80D0DD30  41 82 00 48 */	beq lbl_80D0DD78
/* 80D0DD34  4B 55 A4 A1 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D0DD38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0DD3C  41 82 00 3C */	beq lbl_80D0DD78
/* 80D0DD40  7F E3 FB 78 */	mr r3, r31
/* 80D0DD44  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80D0DD48  4B 36 65 09 */	bl Release__4cBgSFP9dBgW_Base
/* 80D0DD4C  48 00 00 2C */	b lbl_80D0DD78
lbl_80D0DD50:
/* 80D0DD50  A8 9E 05 AE */	lha r4, 0x5ae(r30)
/* 80D0DD54  88 BE 05 AD */	lbz r5, 0x5ad(r30)
/* 80D0DD58  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D0DD5C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D0DD60  38 E0 00 00 */	li r7, 0
/* 80D0DD64  39 00 00 01 */	li r8, 1
/* 80D0DD68  4B 30 D9 15 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80D0DD6C  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80D0DD70  60 00 00 02 */	ori r0, r0, 2
/* 80D0DD74  B0 1E 00 FA */	sth r0, 0xfa(r30)
lbl_80D0DD78:
/* 80D0DD78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0DD7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D0DD80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0DD84  7C 08 03 A6 */	mtlr r0
/* 80D0DD88  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0DD8C  4E 80 00 20 */	blr 
