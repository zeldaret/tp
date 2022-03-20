lbl_80365BB4:
/* 80365BB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80365BB8  7C 08 02 A6 */	mflr r0
/* 80365BBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80365BC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80365BC4  7C BF 2B 78 */	mr r31, r5
/* 80365BC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80365BCC  7C 9E 23 78 */	mr r30, r4
/* 80365BD0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80365BD4  7C 7D 1B 78 */	mr r29, r3
/* 80365BD8  38 60 00 02 */	li r3, 2
/* 80365BDC  4B FF F8 8D */	bl __begin_critical_region
/* 80365BE0  7F A3 EB 78 */	mr r3, r29
/* 80365BE4  7F C4 F3 78 */	mr r4, r30
/* 80365BE8  7F E5 FB 78 */	mr r5, r31
/* 80365BEC  48 00 00 35 */	bl _fseek
/* 80365BF0  7C 60 1B 78 */	mr r0, r3
/* 80365BF4  38 60 00 02 */	li r3, 2
/* 80365BF8  7C 1F 03 78 */	mr r31, r0
/* 80365BFC  4B FF F8 69 */	bl __end_critical_region
/* 80365C00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80365C04  7F E3 FB 78 */	mr r3, r31
/* 80365C08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80365C0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80365C10  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80365C14  7C 08 03 A6 */	mtlr r0
/* 80365C18  38 21 00 20 */	addi r1, r1, 0x20
/* 80365C1C  4E 80 00 20 */	blr 
