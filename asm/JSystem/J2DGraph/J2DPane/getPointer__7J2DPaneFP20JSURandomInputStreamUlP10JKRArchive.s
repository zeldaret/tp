lbl_802F7DB8:
/* 802F7DB8  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802F7DBC  7C 08 02 A6 */	mflr r0
/* 802F7DC0  90 01 01 24 */	stw r0, 0x124(r1)
/* 802F7DC4  39 61 01 20 */	addi r11, r1, 0x120
/* 802F7DC8  48 06 A4 11 */	bl _savegpr_28
/* 802F7DCC  7C 9C 23 78 */	mr r28, r4
/* 802F7DD0  7C BD 2B 78 */	mr r29, r5
/* 802F7DD4  7C DE 33 79 */	or. r30, r6, r6
/* 802F7DD8  38 00 00 00 */	li r0, 0
/* 802F7DDC  98 01 00 08 */	stb r0, 8(r1)
/* 802F7DE0  40 82 00 74 */	bne lbl_802F7E54
/* 802F7DE4  80 0D 90 10 */	lwz r0, mDataManage__9J2DScreen(r13)
/* 802F7DE8  28 00 00 00 */	cmplwi r0, 0
/* 802F7DEC  40 82 00 14 */	bne lbl_802F7E00
/* 802F7DF0  38 61 00 08 */	addi r3, r1, 8
/* 802F7DF4  38 C0 00 00 */	li r6, 0
/* 802F7DF8  4B FE 62 81 */	bl getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
/* 802F7DFC  48 00 00 E0 */	b lbl_802F7EDC
lbl_802F7E00:
/* 802F7E00  7F 83 E3 78 */	mr r3, r28
/* 802F7E04  81 9C 00 00 */	lwz r12, 0(r28)
/* 802F7E08  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F7E0C  7D 89 03 A6 */	mtctr r12
/* 802F7E10  4E 80 04 21 */	bctrl 
/* 802F7E14  7C 7F 1B 78 */	mr r31, r3
/* 802F7E18  38 61 00 08 */	addi r3, r1, 8
/* 802F7E1C  7F 84 E3 78 */	mr r4, r28
/* 802F7E20  7F A5 EB 78 */	mr r5, r29
/* 802F7E24  38 C0 00 00 */	li r6, 0
/* 802F7E28  4B FE 62 51 */	bl getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
/* 802F7E2C  28 03 00 00 */	cmplwi r3, 0
/* 802F7E30  40 82 00 AC */	bne lbl_802F7EDC
/* 802F7E34  7F 83 E3 78 */	mr r3, r28
/* 802F7E38  7F E4 FB 78 */	mr r4, r31
/* 802F7E3C  38 A0 00 00 */	li r5, 0
/* 802F7E40  4B FE 46 9D */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802F7E44  80 6D 90 10 */	lwz r3, mDataManage__9J2DScreen(r13)
/* 802F7E48  7F 84 E3 78 */	mr r4, r28
/* 802F7E4C  48 01 50 31 */	bl get__13J2DDataManageFP14JSUInputStream
/* 802F7E50  48 00 00 8C */	b lbl_802F7EDC
lbl_802F7E54:
/* 802F7E54  7F 83 E3 78 */	mr r3, r28
/* 802F7E58  81 9C 00 00 */	lwz r12, 0(r28)
/* 802F7E5C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F7E60  7D 89 03 A6 */	mtctr r12
/* 802F7E64  4E 80 04 21 */	bctrl 
/* 802F7E68  7C 7F 1B 78 */	mr r31, r3
/* 802F7E6C  38 61 00 08 */	addi r3, r1, 8
/* 802F7E70  7F 84 E3 78 */	mr r4, r28
/* 802F7E74  7F A5 EB 78 */	mr r5, r29
/* 802F7E78  7F C6 F3 78 */	mr r6, r30
/* 802F7E7C  4B FE 61 FD */	bl getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
/* 802F7E80  28 03 00 00 */	cmplwi r3, 0
/* 802F7E84  40 82 00 28 */	bne lbl_802F7EAC
/* 802F7E88  7F 83 E3 78 */	mr r3, r28
/* 802F7E8C  7F E4 FB 78 */	mr r4, r31
/* 802F7E90  38 A0 00 00 */	li r5, 0
/* 802F7E94  4B FE 46 49 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802F7E98  38 61 00 08 */	addi r3, r1, 8
/* 802F7E9C  7F 84 E3 78 */	mr r4, r28
/* 802F7EA0  7F A5 EB 78 */	mr r5, r29
/* 802F7EA4  38 C0 00 00 */	li r6, 0
/* 802F7EA8  4B FE 61 D1 */	bl getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
lbl_802F7EAC:
/* 802F7EAC  28 03 00 00 */	cmplwi r3, 0
/* 802F7EB0  40 82 00 2C */	bne lbl_802F7EDC
/* 802F7EB4  80 0D 90 10 */	lwz r0, mDataManage__9J2DScreen(r13)
/* 802F7EB8  28 00 00 00 */	cmplwi r0, 0
/* 802F7EBC  41 82 00 20 */	beq lbl_802F7EDC
/* 802F7EC0  7F 83 E3 78 */	mr r3, r28
/* 802F7EC4  7F E4 FB 78 */	mr r4, r31
/* 802F7EC8  38 A0 00 00 */	li r5, 0
/* 802F7ECC  4B FE 46 11 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802F7ED0  80 6D 90 10 */	lwz r3, mDataManage__9J2DScreen(r13)
/* 802F7ED4  7F 84 E3 78 */	mr r4, r28
/* 802F7ED8  48 01 4F A5 */	bl get__13J2DDataManageFP14JSUInputStream
lbl_802F7EDC:
/* 802F7EDC  39 61 01 20 */	addi r11, r1, 0x120
/* 802F7EE0  48 06 A3 45 */	bl _restgpr_28
/* 802F7EE4  80 01 01 24 */	lwz r0, 0x124(r1)
/* 802F7EE8  7C 08 03 A6 */	mtlr r0
/* 802F7EEC  38 21 01 20 */	addi r1, r1, 0x120
/* 802F7EF0  4E 80 00 20 */	blr 
