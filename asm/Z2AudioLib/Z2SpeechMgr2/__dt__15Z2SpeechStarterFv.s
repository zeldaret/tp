lbl_802CBCEC:
/* 802CBCEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CBCF0  7C 08 02 A6 */	mflr r0
/* 802CBCF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CBCF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CBCFC  93 C1 00 08 */	stw r30, 8(r1)
/* 802CBD00  7C 7E 1B 79 */	or. r30, r3, r3
/* 802CBD04  7C 9F 23 78 */	mr r31, r4
/* 802CBD08  41 82 00 64 */	beq lbl_802CBD6C
/* 802CBD0C  3C 60 80 3D */	lis r3, __vt__15Z2SpeechStarter@ha /* 0x803CBF24@ha */
/* 802CBD10  38 03 BF 24 */	addi r0, r3, __vt__15Z2SpeechStarter@l /* 0x803CBF24@l */
/* 802CBD14  90 1E 00 00 */	stw r0, 0(r30)
/* 802CBD18  41 82 00 44 */	beq lbl_802CBD5C
/* 802CBD1C  3C 60 80 3D */	lis r3, __vt__14Z2SoundStarter@ha /* 0x803C9D80@ha */
/* 802CBD20  38 03 9D 80 */	addi r0, r3, __vt__14Z2SoundStarter@l /* 0x803C9D80@l */
/* 802CBD24  90 1E 00 00 */	stw r0, 0(r30)
/* 802CBD28  34 1E 00 04 */	addic. r0, r30, 4
/* 802CBD2C  41 82 00 24 */	beq lbl_802CBD50
/* 802CBD30  34 7E 00 04 */	addic. r3, r30, 4
/* 802CBD34  41 82 00 08 */	beq lbl_802CBD3C
/* 802CBD38  38 63 FF FC */	addi r3, r3, -4
lbl_802CBD3C:
/* 802CBD3C  80 0D 85 F4 */	lwz r0, data_80450B74(r13)
/* 802CBD40  7C 00 18 40 */	cmplw r0, r3
/* 802CBD44  40 82 00 0C */	bne lbl_802CBD50
/* 802CBD48  38 00 00 00 */	li r0, 0
/* 802CBD4C  90 0D 85 F4 */	stw r0, data_80450B74(r13)
lbl_802CBD50:
/* 802CBD50  7F C3 F3 78 */	mr r3, r30
/* 802CBD54  38 80 00 00 */	li r4, 0
/* 802CBD58  4B FD 72 31 */	bl __dt__15JAISoundStarterFv
lbl_802CBD5C:
/* 802CBD5C  7F E0 07 35 */	extsh. r0, r31
/* 802CBD60  40 81 00 0C */	ble lbl_802CBD6C
/* 802CBD64  7F C3 F3 78 */	mr r3, r30
/* 802CBD68  48 00 2F D5 */	bl __dl__FPv
lbl_802CBD6C:
/* 802CBD6C  7F C3 F3 78 */	mr r3, r30
/* 802CBD70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CBD74  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CBD78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CBD7C  7C 08 03 A6 */	mtlr r0
/* 802CBD80  38 21 00 10 */	addi r1, r1, 0x10
/* 802CBD84  4E 80 00 20 */	blr 
