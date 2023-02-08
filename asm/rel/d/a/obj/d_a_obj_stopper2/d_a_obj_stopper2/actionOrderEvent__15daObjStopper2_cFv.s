lbl_80CEF98C:
/* 80CEF98C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEF990  7C 08 02 A6 */	mflr r0
/* 80CEF994  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEF998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEF99C  7C 7F 1B 78 */	mr r31, r3
/* 80CEF9A0  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CEF9A4  28 00 00 02 */	cmplwi r0, 2
/* 80CEF9A8  40 82 00 48 */	bne lbl_80CEF9F0
/* 80CEF9AC  38 00 00 02 */	li r0, 2
/* 80CEF9B0  98 1F 05 86 */	stb r0, 0x586(r31)
/* 80CEF9B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CEF9B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CEF9BC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CEF9C0  3C 80 80 CF */	lis r4, l_staffName@ha /* 0x80CEFF38@ha */
/* 80CEF9C4  38 84 FF 38 */	addi r4, r4, l_staffName@l /* 0x80CEFF38@l */
/* 80CEF9C8  80 84 00 00 */	lwz r4, 0(r4)
/* 80CEF9CC  38 A0 00 00 */	li r5, 0
/* 80CEF9D0  38 C0 00 00 */	li r6, 0
/* 80CEF9D4  4B 35 81 49 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80CEF9D8  90 7F 05 78 */	stw r3, 0x578(r31)
/* 80CEF9DC  38 00 00 01 */	li r0, 1
/* 80CEF9E0  98 1F 05 88 */	stb r0, 0x588(r31)
/* 80CEF9E4  7F E3 FB 78 */	mr r3, r31
/* 80CEF9E8  48 00 00 F1 */	bl demoProc__15daObjStopper2_cFv
/* 80CEF9EC  48 00 00 60 */	b lbl_80CEFA4C
lbl_80CEF9F0:
/* 80CEF9F0  88 1F 05 84 */	lbz r0, 0x584(r31)
/* 80CEF9F4  54 00 08 3C */	slwi r0, r0, 1
/* 80CEF9F8  7C 9F 02 14 */	add r4, r31, r0
/* 80CEF9FC  A8 84 05 7C */	lha r4, 0x57c(r4)
/* 80CEFA00  2C 04 FF FF */	cmpwi r4, -1
/* 80CEFA04  40 82 00 24 */	bne lbl_80CEFA28
/* 80CEFA08  88 9F 05 85 */	lbz r4, 0x585(r31)
/* 80CEFA0C  38 A0 00 FF */	li r5, 0xff
/* 80CEFA10  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CEFA14  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CEFA18  38 E0 00 01 */	li r7, 1
/* 80CEFA1C  39 00 00 00 */	li r8, 0
/* 80CEFA20  4B 32 BD 95 */	bl fopAcM_orderMapToolEvent__FP10fopAc_ac_cUcsUsUsUs
/* 80CEFA24  48 00 00 1C */	b lbl_80CEFA40
lbl_80CEFA28:
/* 80CEFA28  88 BF 05 85 */	lbz r5, 0x585(r31)
/* 80CEFA2C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CEFA30  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CEFA34  38 E0 00 00 */	li r7, 0
/* 80CEFA38  39 00 00 01 */	li r8, 1
/* 80CEFA3C  4B 32 BC 41 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80CEFA40:
/* 80CEFA40  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CEFA44  60 00 00 02 */	ori r0, r0, 2
/* 80CEFA48  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CEFA4C:
/* 80CEFA4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEFA50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEFA54  7C 08 03 A6 */	mtlr r0
/* 80CEFA58  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEFA5C  4E 80 00 20 */	blr 
