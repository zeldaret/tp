lbl_800E6E0C:
/* 800E6E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E6E10  7C 08 02 A6 */	mflr r0
/* 800E6E14  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E6E18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E6E1C  93 C1 00 08 */	stw r30, 8(r1)
/* 800E6E20  7C 7E 1B 78 */	mr r30, r3
/* 800E6E24  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800E6E28  80 03 28 30 */	lwz r0, 0x2830(r3)
/* 800E6E2C  28 00 00 00 */	cmplwi r0, 0
/* 800E6E30  40 82 00 20 */	bne lbl_800E6E50
/* 800E6E34  38 80 00 02 */	li r4, 2
/* 800E6E38  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800E6E3C  4B FC 68 E9 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800E6E40  7F C3 F3 78 */	mr r3, r30
/* 800E6E44  38 80 00 00 */	li r4, 0
/* 800E6E48  4B FD 32 89 */	bl checkNextAction__9daAlink_cFi
/* 800E6E4C  48 00 00 88 */	b lbl_800E6ED4
lbl_800E6E50:
/* 800E6E50  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 800E6E54  2C 00 00 00 */	cmpwi r0, 0
/* 800E6E58  41 82 00 38 */	beq lbl_800E6E90
/* 800E6E5C  80 9E 20 60 */	lwz r4, 0x2060(r30)
/* 800E6E60  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 800E6E64  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800E6E68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E6E6C  40 80 00 64 */	bge lbl_800E6ED0
/* 800E6E70  7F E4 FB 78 */	mr r4, r31
/* 800E6E74  3C A0 80 39 */	lis r5, m__18daAlinkHIO_grab_c0@ha /* 0x8038EC48@ha */
/* 800E6E78  38 A5 EC 48 */	addi r5, r5, m__18daAlinkHIO_grab_c0@l /* 0x8038EC48@l */
/* 800E6E7C  C0 25 00 68 */	lfs f1, 0x68(r5)
/* 800E6E80  48 01 AE 75 */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
/* 800E6E84  38 00 00 00 */	li r0, 0
/* 800E6E88  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800E6E8C  48 00 00 44 */	b lbl_800E6ED0
lbl_800E6E90:
/* 800E6E90  7F E3 FB 78 */	mr r3, r31
/* 800E6E94  48 07 76 39 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E6E98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E6E9C  40 82 00 2C */	bne lbl_800E6EC8
/* 800E6EA0  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800E6EA4  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800E6EA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E6EAC  40 81 00 24 */	ble lbl_800E6ED0
/* 800E6EB0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800E6EB4  3C 60 80 39 */	lis r3, m__18daAlinkHIO_grab_c0@ha /* 0x8038EC48@ha */
/* 800E6EB8  38 63 EC 48 */	addi r3, r3, m__18daAlinkHIO_grab_c0@l /* 0x8038EC48@l */
/* 800E6EBC  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 800E6EC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E6EC4  40 81 00 0C */	ble lbl_800E6ED0
lbl_800E6EC8:
/* 800E6EC8  7F C3 F3 78 */	mr r3, r30
/* 800E6ECC  4B FF E4 E1 */	bl initGrabNextMode__9daAlink_cFv
lbl_800E6ED0:
/* 800E6ED0  38 60 00 01 */	li r3, 1
lbl_800E6ED4:
/* 800E6ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E6ED8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E6EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E6EE0  7C 08 03 A6 */	mtlr r0
/* 800E6EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 800E6EE8  4E 80 00 20 */	blr 
