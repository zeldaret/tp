lbl_80637E10:
/* 80637E10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80637E14  7C 08 02 A6 */	mflr r0
/* 80637E18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80637E1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80637E20  7C 7F 1B 78 */	mr r31, r3
/* 80637E24  88 03 0F CE */	lbz r0, 0xfce(r3)
/* 80637E28  28 00 00 01 */	cmplwi r0, 1
/* 80637E2C  40 82 00 38 */	bne lbl_80637E64
/* 80637E30  38 7F 0F E4 */	addi r3, r31, 0xfe4
/* 80637E34  88 1F 0F B7 */	lbz r0, 0xfb7(r31)
/* 80637E38  54 00 10 3A */	slwi r0, r0, 2
/* 80637E3C  7C 9F 02 14 */	add r4, r31, r0
/* 80637E40  80 84 05 FC */	lwz r4, 0x5fc(r4)
/* 80637E44  38 84 00 24 */	addi r4, r4, 0x24
/* 80637E48  4B D0 E6 69 */	bl PSMTXCopy
/* 80637E4C  80 7F 10 14 */	lwz r3, 0x1014(r31)
/* 80637E50  28 03 00 00 */	cmplwi r3, 0
/* 80637E54  41 82 00 08 */	beq lbl_80637E5C
/* 80637E58  4B A4 3B 69 */	bl Move__4dBgWFv
lbl_80637E5C:
/* 80637E5C  38 60 00 01 */	li r3, 1
/* 80637E60  48 00 01 2C */	b lbl_80637F8C
lbl_80637E64:
/* 80637E64  80 7F 0F 8C */	lwz r3, 0xf8c(r31)
/* 80637E68  2C 03 00 00 */	cmpwi r3, 0
/* 80637E6C  41 82 00 0C */	beq lbl_80637E78
/* 80637E70  38 03 FF FF */	addi r0, r3, -1
/* 80637E74  90 1F 0F 8C */	stw r0, 0xf8c(r31)
lbl_80637E78:
/* 80637E78  80 7F 0F 90 */	lwz r3, 0xf90(r31)
/* 80637E7C  2C 03 00 00 */	cmpwi r3, 0
/* 80637E80  41 82 00 0C */	beq lbl_80637E8C
/* 80637E84  38 03 FF FF */	addi r0, r3, -1
/* 80637E88  90 1F 0F 90 */	stw r0, 0xf90(r31)
lbl_80637E8C:
/* 80637E8C  80 7F 0F 94 */	lwz r3, 0xf94(r31)
/* 80637E90  2C 03 00 00 */	cmpwi r3, 0
/* 80637E94  41 82 00 0C */	beq lbl_80637EA0
/* 80637E98  38 03 FF FF */	addi r0, r3, -1
/* 80637E9C  90 1F 0F 94 */	stw r0, 0xf94(r31)
lbl_80637EA0:
/* 80637EA0  80 7F 0F 98 */	lwz r3, 0xf98(r31)
/* 80637EA4  2C 03 00 00 */	cmpwi r3, 0
/* 80637EA8  41 82 00 0C */	beq lbl_80637EB4
/* 80637EAC  38 03 FF FF */	addi r0, r3, -1
/* 80637EB0  90 1F 0F 98 */	stw r0, 0xf98(r31)
lbl_80637EB4:
/* 80637EB4  A0 7F 0F 86 */	lhz r3, 0xf86(r31)
/* 80637EB8  28 03 00 00 */	cmplwi r3, 0
/* 80637EBC  41 82 00 0C */	beq lbl_80637EC8
/* 80637EC0  38 03 FF FF */	addi r0, r3, -1
/* 80637EC4  B0 1F 0F 86 */	sth r0, 0xf86(r31)
lbl_80637EC8:
/* 80637EC8  A0 7F 0F 88 */	lhz r3, 0xf88(r31)
/* 80637ECC  28 03 00 00 */	cmplwi r3, 0
/* 80637ED0  41 82 00 0C */	beq lbl_80637EDC
/* 80637ED4  38 03 FF FF */	addi r0, r3, -1
/* 80637ED8  B0 1F 0F 88 */	sth r0, 0xf88(r31)
lbl_80637EDC:
/* 80637EDC  80 7F 0F 9C */	lwz r3, 0xf9c(r31)
/* 80637EE0  2C 03 00 00 */	cmpwi r3, 0
/* 80637EE4  41 82 00 2C */	beq lbl_80637F10
/* 80637EE8  38 03 FF FF */	addi r0, r3, -1
/* 80637EEC  90 1F 0F 9C */	stw r0, 0xf9c(r31)
/* 80637EF0  80 1F 0F 9C */	lwz r0, 0xf9c(r31)
/* 80637EF4  2C 00 00 00 */	cmpwi r0, 0
/* 80637EF8  40 82 00 18 */	bne lbl_80637F10
/* 80637EFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80637F00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80637F04  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80637F08  38 80 00 1F */	li r4, 0x1f
/* 80637F0C  4B A3 7E 89 */	bl StopQuake__12dVibration_cFi
lbl_80637F10:
/* 80637F10  80 7F 0F A0 */	lwz r3, 0xfa0(r31)
/* 80637F14  2C 03 00 00 */	cmpwi r3, 0
/* 80637F18  41 82 00 0C */	beq lbl_80637F24
/* 80637F1C  38 03 FF FF */	addi r0, r3, -1
/* 80637F20  90 1F 0F A0 */	stw r0, 0xfa0(r31)
lbl_80637F24:
/* 80637F24  80 1F 0F A4 */	lwz r0, 0xfa4(r31)
/* 80637F28  2C 00 00 00 */	cmpwi r0, 0
/* 80637F2C  41 82 00 44 */	beq lbl_80637F70
/* 80637F30  4B B4 97 11 */	bl dCam_getBody__Fv
/* 80637F34  7F E4 FB 78 */	mr r4, r31
/* 80637F38  4B B4 95 FD */	bl ForceLockOn__9dCamera_cFP10fopAc_ac_c
/* 80637F3C  80 7F 0F A4 */	lwz r3, 0xfa4(r31)
/* 80637F40  38 03 FF FF */	addi r0, r3, -1
/* 80637F44  90 1F 0F A4 */	stw r0, 0xfa4(r31)
/* 80637F48  80 1F 0F A4 */	lwz r0, 0xfa4(r31)
/* 80637F4C  2C 00 00 00 */	cmpwi r0, 0
/* 80637F50  40 82 00 20 */	bne lbl_80637F70
/* 80637F54  4B B4 96 ED */	bl dCam_getBody__Fv
/* 80637F58  4B B4 95 A9 */	bl GetForceLockOnActor__9dCamera_cFv
/* 80637F5C  7C 03 F8 40 */	cmplw r3, r31
/* 80637F60  40 82 00 10 */	bne lbl_80637F70
/* 80637F64  4B B4 96 DD */	bl dCam_getBody__Fv
/* 80637F68  7F E4 FB 78 */	mr r4, r31
/* 80637F6C  4B B4 96 31 */	bl ForceLockOff__9dCamera_cFP10fopAc_ac_c
lbl_80637F70:
/* 80637F70  7F E3 FB 78 */	mr r3, r31
/* 80637F74  4B FF F5 49 */	bl action__8daB_YO_cFv
/* 80637F78  7F E3 FB 78 */	mr r3, r31
/* 80637F7C  4B FF FA 15 */	bl mtx_set__8daB_YO_cFv
/* 80637F80  7F E3 FB 78 */	mr r3, r31
/* 80637F84  4B FF FB AD */	bl cc_set__8daB_YO_cFv
/* 80637F88  38 60 00 01 */	li r3, 1
lbl_80637F8C:
/* 80637F8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80637F90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80637F94  7C 08 03 A6 */	mtlr r0
/* 80637F98  38 21 00 10 */	addi r1, r1, 0x10
/* 80637F9C  4E 80 00 20 */	blr 
