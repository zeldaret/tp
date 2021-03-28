lbl_802E8860:
/* 802E8860  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E8864  7C 08 02 A6 */	mflr r0
/* 802E8868  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E886C  39 61 00 20 */	addi r11, r1, 0x20
/* 802E8870  48 07 99 6D */	bl _savegpr_29
/* 802E8874  7C 7D 1B 78 */	mr r29, r3
/* 802E8878  7C 9F 23 79 */	or. r31, r4, r4
/* 802E887C  40 82 00 0C */	bne lbl_802E8888
/* 802E8880  38 60 00 00 */	li r3, 0
/* 802E8884  48 00 00 60 */	b lbl_802E88E4
lbl_802E8888:
/* 802E8888  48 05 4E 81 */	bl OSEnableInterrupts
/* 802E888C  7C 7E 1B 78 */	mr r30, r3
/* 802E8890  7F E3 FB 78 */	mr r3, r31
/* 802E8894  38 9D 08 34 */	addi r4, r29, 0x834
/* 802E8898  48 05 FF F9 */	bl DVDOpen
/* 802E889C  7C 7F 1B 78 */	mr r31, r3
/* 802E88A0  7F C3 F3 78 */	mr r3, r30
/* 802E88A4  48 05 4E 79 */	bl OSRestoreInterrupts
/* 802E88A8  2C 1F 00 00 */	cmpwi r31, 0
/* 802E88AC  40 82 00 14 */	bne lbl_802E88C0
/* 802E88B0  38 00 00 00 */	li r0, 0
/* 802E88B4  98 1D 08 30 */	stb r0, 0x830(r29)
/* 802E88B8  38 60 00 00 */	li r3, 0
/* 802E88BC  48 00 00 28 */	b lbl_802E88E4
lbl_802E88C0:
/* 802E88C0  48 05 4E 49 */	bl OSEnableInterrupts
/* 802E88C4  80 1D 08 68 */	lwz r0, 0x868(r29)
/* 802E88C8  90 1D 08 28 */	stw r0, 0x828(r29)
/* 802E88CC  48 05 4E 51 */	bl OSRestoreInterrupts
/* 802E88D0  38 00 00 00 */	li r0, 0
/* 802E88D4  90 1D 08 2C */	stw r0, 0x82c(r29)
/* 802E88D8  38 00 00 01 */	li r0, 1
/* 802E88DC  98 1D 08 30 */	stb r0, 0x830(r29)
/* 802E88E0  38 60 00 01 */	li r3, 1
lbl_802E88E4:
/* 802E88E4  39 61 00 20 */	addi r11, r1, 0x20
/* 802E88E8  48 07 99 41 */	bl _restgpr_29
/* 802E88EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E88F0  7C 08 03 A6 */	mtlr r0
/* 802E88F4  38 21 00 20 */	addi r1, r1, 0x20
/* 802E88F8  4E 80 00 20 */	blr 
