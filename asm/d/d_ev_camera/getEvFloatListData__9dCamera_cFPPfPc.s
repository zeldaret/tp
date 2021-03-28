lbl_80088E58:
/* 80088E58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80088E5C  7C 08 02 A6 */	mflr r0
/* 80088E60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80088E64  39 61 00 20 */	addi r11, r1, 0x20
/* 80088E68  48 2D 93 6D */	bl _savegpr_27
/* 80088E6C  7C 7B 1B 78 */	mr r27, r3
/* 80088E70  7C 9C 23 78 */	mr r28, r4
/* 80088E74  7C BD 2B 78 */	mr r29, r5
/* 80088E78  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 80088E7C  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80088E80  41 82 00 34 */	beq lbl_80088EB4
/* 80088E84  7F A4 EB 78 */	mr r4, r29
/* 80088E88  4B FF FD 9D */	bl searchEventArgData__9dCamera_cFPc
/* 80088E8C  2C 03 FF FF */	cmpwi r3, -1
/* 80088E90  40 82 00 0C */	bne lbl_80088E9C
/* 80088E94  38 60 00 00 */	li r3, 0
/* 80088E98  48 00 00 6C */	b lbl_80088F04
lbl_80088E9C:
/* 80088E9C  1C 03 00 18 */	mulli r0, r3, 0x18
/* 80088EA0  7C 7B 02 14 */	add r3, r27, r0
/* 80088EA4  80 03 05 28 */	lwz r0, 0x528(r3)
/* 80088EA8  90 1C 00 00 */	stw r0, 0(r28)
/* 80088EAC  83 C3 05 24 */	lwz r30, 0x524(r3)
/* 80088EB0  48 00 00 50 */	b lbl_80088F00
lbl_80088EB4:
/* 80088EB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80088EB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80088EBC  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80088EC0  7F E3 FB 78 */	mr r3, r31
/* 80088EC4  80 9B 04 EC */	lwz r4, 0x4ec(r27)
/* 80088EC8  4B FB F2 7D */	bl getMySubstanceNum__16dEvent_manager_cFiPCc
/* 80088ECC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80088ED0  41 82 00 20 */	beq lbl_80088EF0
/* 80088ED4  7F E3 FB 78 */	mr r3, r31
/* 80088ED8  80 9B 04 EC */	lwz r4, 0x4ec(r27)
/* 80088EDC  7F A5 EB 78 */	mr r5, r29
/* 80088EE0  38 C0 00 00 */	li r6, 0
/* 80088EE4  4B FB F2 09 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80088EE8  90 7C 00 00 */	stw r3, 0(r28)
/* 80088EEC  48 00 00 14 */	b lbl_80088F00
lbl_80088EF0:
/* 80088EF0  38 00 00 01 */	li r0, 1
/* 80088EF4  98 1B 04 F8 */	stb r0, 0x4f8(r27)
/* 80088EF8  38 60 00 00 */	li r3, 0
/* 80088EFC  48 00 00 08 */	b lbl_80088F04
lbl_80088F00:
/* 80088F00  7F C3 F3 78 */	mr r3, r30
lbl_80088F04:
/* 80088F04  39 61 00 20 */	addi r11, r1, 0x20
/* 80088F08  48 2D 93 19 */	bl _restgpr_27
/* 80088F0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80088F10  7C 08 03 A6 */	mtlr r0
/* 80088F14  38 21 00 20 */	addi r1, r1, 0x20
/* 80088F18  4E 80 00 20 */	blr 
