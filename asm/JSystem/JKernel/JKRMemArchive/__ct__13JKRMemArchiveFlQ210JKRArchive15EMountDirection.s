lbl_802D69B8:
/* 802D69B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D69BC  7C 08 02 A6 */	mflr r0
/* 802D69C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D69C4  39 61 00 20 */	addi r11, r1, 0x20
/* 802D69C8  48 08 B8 15 */	bl _savegpr_29
/* 802D69CC  7C 7D 1B 78 */	mr r29, r3
/* 802D69D0  7C 9E 23 78 */	mr r30, r4
/* 802D69D4  7C BF 2B 78 */	mr r31, r5
/* 802D69D8  38 A0 00 01 */	li r5, 1
/* 802D69DC  4B FF F8 B9 */	bl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
/* 802D69E0  3C 60 80 3D */	lis r3, __vt__13JKRMemArchive@ha
/* 802D69E4  38 03 C2 D8 */	addi r0, r3, __vt__13JKRMemArchive@l
/* 802D69E8  90 1D 00 00 */	stw r0, 0(r29)
/* 802D69EC  38 00 00 00 */	li r0, 0
/* 802D69F0  98 1D 00 30 */	stb r0, 0x30(r29)
/* 802D69F4  93 FD 00 60 */	stw r31, 0x60(r29)
/* 802D69F8  7F A3 EB 78 */	mr r3, r29
/* 802D69FC  7F C4 F3 78 */	mr r4, r30
/* 802D6A00  80 BD 00 60 */	lwz r5, 0x60(r29)
/* 802D6A04  48 00 01 C9 */	bl open__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
/* 802D6A08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D6A0C  40 82 00 0C */	bne lbl_802D6A18
/* 802D6A10  7F A3 EB 78 */	mr r3, r29
/* 802D6A14  48 00 00 40 */	b lbl_802D6A54
lbl_802D6A18:
/* 802D6A18  3C 60 52 41 */	lis r3, 0x5241 /* 0x52415243@ha */
/* 802D6A1C  38 03 52 43 */	addi r0, r3, 0x5243 /* 0x52415243@l */
/* 802D6A20  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 802D6A24  80 9D 00 54 */	lwz r4, 0x54(r29)
/* 802D6A28  80 7D 00 48 */	lwz r3, 0x48(r29)
/* 802D6A2C  80 03 00 04 */	lwz r0, 4(r3)
/* 802D6A30  7C 04 02 14 */	add r0, r4, r0
/* 802D6A34  90 1D 00 28 */	stw r0, 0x28(r29)
/* 802D6A38  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 802D6A3C  38 63 43 54 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 802D6A40  38 9D 00 18 */	addi r4, r29, 0x18
/* 802D6A44  48 00 55 AD */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 802D6A48  38 00 00 01 */	li r0, 1
/* 802D6A4C  98 1D 00 30 */	stb r0, 0x30(r29)
/* 802D6A50  7F A3 EB 78 */	mr r3, r29
lbl_802D6A54:
/* 802D6A54  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6A58  48 08 B7 D1 */	bl _restgpr_29
/* 802D6A5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6A60  7C 08 03 A6 */	mtlr r0
/* 802D6A64  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6A68  4E 80 00 20 */	blr 
