lbl_802D7BF0:
/* 802D7BF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D7BF4  7C 08 02 A6 */	mflr r0
/* 802D7BF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D7BFC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7C00  48 08 A5 DD */	bl _savegpr_29
/* 802D7C04  7C 7D 1B 78 */	mr r29, r3
/* 802D7C08  7C 9E 23 78 */	mr r30, r4
/* 802D7C0C  7C BF 2B 78 */	mr r31, r5
/* 802D7C10  38 A0 00 03 */	li r5, 3
/* 802D7C14  4B FF E6 81 */	bl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
/* 802D7C18  3C 60 80 3D */	lis r3, __vt__13JKRDvdArchive@ha
/* 802D7C1C  38 03 C3 98 */	addi r0, r3, __vt__13JKRDvdArchive@l
/* 802D7C20  90 1D 00 00 */	stw r0, 0(r29)
/* 802D7C24  93 FD 00 60 */	stw r31, 0x60(r29)
/* 802D7C28  7F A3 EB 78 */	mr r3, r29
/* 802D7C2C  7F C4 F3 78 */	mr r4, r30
/* 802D7C30  48 00 01 85 */	bl open__13JKRDvdArchiveFl
/* 802D7C34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D7C38  40 82 00 0C */	bne lbl_802D7C44
/* 802D7C3C  7F A3 EB 78 */	mr r3, r29
/* 802D7C40  48 00 00 40 */	b lbl_802D7C80
lbl_802D7C44:
/* 802D7C44  3C 60 52 41 */	lis r3, 0x5241 /* 0x52415243@ha */
/* 802D7C48  38 03 52 43 */	addi r0, r3, 0x5243 /* 0x52415243@l */
/* 802D7C4C  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 802D7C50  80 9D 00 54 */	lwz r4, 0x54(r29)
/* 802D7C54  80 7D 00 48 */	lwz r3, 0x48(r29)
/* 802D7C58  80 03 00 04 */	lwz r0, 4(r3)
/* 802D7C5C  7C 04 02 14 */	add r0, r4, r0
/* 802D7C60  90 1D 00 28 */	stw r0, 0x28(r29)
/* 802D7C64  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 802D7C68  38 63 43 54 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 802D7C6C  38 9D 00 18 */	addi r4, r29, 0x18
/* 802D7C70  48 00 43 81 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 802D7C74  38 00 00 01 */	li r0, 1
/* 802D7C78  98 1D 00 30 */	stb r0, 0x30(r29)
/* 802D7C7C  7F A3 EB 78 */	mr r3, r29
lbl_802D7C80:
/* 802D7C80  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7C84  48 08 A5 A5 */	bl _restgpr_29
/* 802D7C88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D7C8C  7C 08 03 A6 */	mtlr r0
/* 802D7C90  38 21 00 20 */	addi r1, r1, 0x20
/* 802D7C94  4E 80 00 20 */	blr 
