.include "macros.inc"

.section .text, "ax" # 8001e308


.global fopCamM_GetParam
fopCamM_GetParam:
/* 8001E308 0001B248  80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 8001E30C 0001B24C  4E 80 00 20 */	blr 

.global fopCamM_Create
fopCamM_Create:
/* 8001E310 0001B250  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001E314 0001B254  7C 08 02 A6 */	mflr r0
/* 8001E318 0001B258  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001E31C 0001B25C  39 61 00 20 */	addi r11, r1, 0x20
/* 8001E320 0001B260  48 34 3E BD */	bl func_803621DC
/* 8001E324 0001B264  7C 7D 1B 78 */	mr r29, r3
/* 8001E328 0001B268  7C 9E 23 78 */	mr r30, r4
/* 8001E32C 0001B26C  7C BF 2B 78 */	mr r31, r5
/* 8001E330 0001B270  48 00 33 C5 */	bl fpcLy_CurrentLayer
/* 8001E334 0001B274  7F C4 F3 78 */	mr r4, r30
/* 8001E338 0001B278  38 A0 00 00 */	li r5, 0
/* 8001E33C 0001B27C  38 C0 00 00 */	li r6, 0
/* 8001E340 0001B280  7F E7 FB 78 */	mr r7, r31
/* 8001E344 0001B284  48 00 5A 51 */	bl fpcSCtRq_Request
/* 8001E348 0001B288  57 A0 10 3A */	slwi r0, r29, 2
/* 8001E34C 0001B28C  3C 80 80 3F */	lis r4, lbl_803F1DD8@ha
/* 8001E350 0001B290  38 84 1D D8 */	addi r4, r4, lbl_803F1DD8@l
/* 8001E354 0001B294  7C 64 01 2E */	stwx r3, r4, r0
/* 8001E358 0001B298  7C 64 00 2E */	lwzx r3, r4, r0
/* 8001E35C 0001B29C  39 61 00 20 */	addi r11, r1, 0x20
/* 8001E360 0001B2A0  48 34 3E C9 */	bl func_80362228
/* 8001E364 0001B2A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001E368 0001B2A8  7C 08 03 A6 */	mtlr r0
/* 8001E36C 0001B2AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8001E370 0001B2B0  4E 80 00 20 */	blr 

.global fopCamM_Management
fopCamM_Management:
/* 8001E374 0001B2B4  4E 80 00 20 */	blr 

.global fopCamM_Init
fopCamM_Init:
/* 8001E378 0001B2B8  4E 80 00 20 */	blr 
