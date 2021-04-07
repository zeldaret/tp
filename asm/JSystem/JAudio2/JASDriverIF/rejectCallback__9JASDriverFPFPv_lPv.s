lbl_8029E1C4:
/* 8029E1C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029E1C8  7C 08 02 A6 */	mflr r0
/* 8029E1CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029E1D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8029E1D4  48 0C 40 05 */	bl _savegpr_28
/* 8029E1D8  7C 7C 1B 78 */	mr r28, r3
/* 8029E1DC  7C 9D 23 78 */	mr r29, r4
/* 8029E1E0  3C 60 80 43 */	lis r3, sDspSyncCallback__9JASDriver@ha /* 0x80431C78@ha */
/* 8029E1E4  3B C3 1C 78 */	addi r30, r3, sDspSyncCallback__9JASDriver@l /* 0x80431C78@l */
/* 8029E1E8  38 7E 00 00 */	addi r3, r30, 0
/* 8029E1EC  7F 84 E3 78 */	mr r4, r28
/* 8029E1F0  7F A5 EB 78 */	mr r5, r29
/* 8029E1F4  4B FF 1E 3D */	bl reject__14JASCallbackMgrFPFPv_lPv
/* 8029E1F8  7C 7F 1B 78 */	mr r31, r3
/* 8029E1FC  38 7E 01 00 */	addi r3, r30, 0x100
/* 8029E200  7F 84 E3 78 */	mr r4, r28
/* 8029E204  7F A5 EB 78 */	mr r5, r29
/* 8029E208  4B FF 1E 29 */	bl reject__14JASCallbackMgrFPFPv_lPv
/* 8029E20C  7F FF 1A 14 */	add r31, r31, r3
/* 8029E210  38 7E 02 00 */	addi r3, r30, 0x200
/* 8029E214  7F 84 E3 78 */	mr r4, r28
/* 8029E218  7F A5 EB 78 */	mr r5, r29
/* 8029E21C  4B FF 1E 15 */	bl reject__14JASCallbackMgrFPFPv_lPv
/* 8029E220  7F FF 1A 14 */	add r31, r31, r3
/* 8029E224  7F E3 FB 78 */	mr r3, r31
/* 8029E228  39 61 00 20 */	addi r11, r1, 0x20
/* 8029E22C  48 0C 3F F9 */	bl _restgpr_28
/* 8029E230  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029E234  7C 08 03 A6 */	mtlr r0
/* 8029E238  38 21 00 20 */	addi r1, r1, 0x20
/* 8029E23C  4E 80 00 20 */	blr 
