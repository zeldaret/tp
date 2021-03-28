lbl_802CF928:
/* 802CF928  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CF92C  7C 08 02 A6 */	mflr r0
/* 802CF930  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CF934  39 61 00 20 */	addi r11, r1, 0x20
/* 802CF938  48 09 28 A5 */	bl _savegpr_29
/* 802CF93C  7C 7D 1B 78 */	mr r29, r3
/* 802CF940  7C 9E 23 78 */	mr r30, r4
/* 802CF944  38 7D 00 18 */	addi r3, r29, 0x18
/* 802CF948  48 06 F6 F9 */	bl OSLockMutex
/* 802CF94C  8B FD 00 6D */	lbz r31, 0x6d(r29)
/* 802CF950  9B DD 00 6D */	stb r30, 0x6d(r29)
/* 802CF954  38 7D 00 18 */	addi r3, r29, 0x18
/* 802CF958  48 06 F7 C5 */	bl OSUnlockMutex
/* 802CF95C  7F E3 FB 78 */	mr r3, r31
/* 802CF960  39 61 00 20 */	addi r11, r1, 0x20
/* 802CF964  48 09 28 C5 */	bl _restgpr_29
/* 802CF968  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CF96C  7C 08 03 A6 */	mtlr r0
/* 802CF970  38 21 00 20 */	addi r1, r1, 0x20
/* 802CF974  4E 80 00 20 */	blr 
