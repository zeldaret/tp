lbl_80C97BAC:
/* 80C97BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C97BB0  7C 08 02 A6 */	mflr r0
/* 80C97BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C97BB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C97BBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C97BC0  41 82 00 EC */	beq lbl_80C97CAC
/* 80C97BC4  38 7F 05 88 */	addi r3, r31, 0x588
/* 80C97BC8  4B 5D 06 0D */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C97BCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C97BD0  41 82 00 18 */	beq lbl_80C97BE8
/* 80C97BD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C97BD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C97BDC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C97BE0  38 9F 05 88 */	addi r4, r31, 0x588
/* 80C97BE4  4B 3D C6 6D */	bl Release__4cBgSFP9dBgW_Base
lbl_80C97BE8:
/* 80C97BE8  38 7F 06 48 */	addi r3, r31, 0x648
/* 80C97BEC  4B 5D 05 E9 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C97BF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C97BF4  41 82 00 18 */	beq lbl_80C97C0C
/* 80C97BF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C97BFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C97C00  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C97C04  38 9F 06 48 */	addi r4, r31, 0x648
/* 80C97C08  4B 3D C6 49 */	bl Release__4cBgSFP9dBgW_Base
lbl_80C97C0C:
/* 80C97C0C  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80C97C10  3C 80 80 CA */	lis r4, l_arcName@ha /* 0x80C98080@ha */
/* 80C97C14  38 84 80 80 */	addi r4, r4, l_arcName@l /* 0x80C98080@l */
/* 80C97C18  80 84 00 00 */	lwz r4, 0(r4)
/* 80C97C1C  4B 39 53 ED */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C97C20  34 1F 07 7C */	addic. r0, r31, 0x77c
/* 80C97C24  41 82 00 24 */	beq lbl_80C97C48
/* 80C97C28  3C 60 80 CA */	lis r3, __vt__20dScissorEnd_packet_c@ha /* 0x80C98110@ha */
/* 80C97C2C  38 03 81 10 */	addi r0, r3, __vt__20dScissorEnd_packet_c@l /* 0x80C98110@l */
/* 80C97C30  90 1F 07 7C */	stw r0, 0x77c(r31)
/* 80C97C34  34 1F 07 7C */	addic. r0, r31, 0x77c
/* 80C97C38  41 82 00 10 */	beq lbl_80C97C48
/* 80C97C3C  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 80C97C40  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 80C97C44  90 1F 07 7C */	stw r0, 0x77c(r31)
lbl_80C97C48:
/* 80C97C48  34 1F 07 3C */	addic. r0, r31, 0x73c
/* 80C97C4C  41 82 00 3C */	beq lbl_80C97C88
/* 80C97C50  3C 60 80 CA */	lis r3, __vt__22dScissorBegin_packet_c@ha /* 0x80C98124@ha */
/* 80C97C54  38 03 81 24 */	addi r0, r3, __vt__22dScissorBegin_packet_c@l /* 0x80C98124@l */
/* 80C97C58  90 1F 07 3C */	stw r0, 0x73c(r31)
/* 80C97C5C  38 7F 07 4C */	addi r3, r31, 0x74c
/* 80C97C60  3C 80 80 C9 */	lis r4, __dt__4cXyzFv@ha /* 0x80C96DAC@ha */
/* 80C97C64  38 84 6D AC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C96DAC@l */
/* 80C97C68  38 A0 00 0C */	li r5, 0xc
/* 80C97C6C  38 C0 00 04 */	li r6, 4
/* 80C97C70  4B 6C A0 79 */	bl __destroy_arr
/* 80C97C74  34 1F 07 3C */	addic. r0, r31, 0x73c
/* 80C97C78  41 82 00 10 */	beq lbl_80C97C88
/* 80C97C7C  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 80C97C80  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 80C97C84  90 1F 07 3C */	stw r0, 0x73c(r31)
lbl_80C97C88:
/* 80C97C88  38 7F 05 88 */	addi r3, r31, 0x588
/* 80C97C8C  3C 80 80 C9 */	lis r4, __dt__4dBgWFv@ha /* 0x80C97CC4@ha */
/* 80C97C90  38 84 7C C4 */	addi r4, r4, __dt__4dBgWFv@l /* 0x80C97CC4@l */
/* 80C97C94  38 A0 00 C0 */	li r5, 0xc0
/* 80C97C98  38 C0 00 02 */	li r6, 2
/* 80C97C9C  4B 6C A0 4D */	bl __destroy_arr
/* 80C97CA0  7F E3 FB 78 */	mr r3, r31
/* 80C97CA4  38 80 00 00 */	li r4, 0
/* 80C97CA8  4B 38 0F E5 */	bl __dt__10fopAc_ac_cFv
lbl_80C97CAC:
/* 80C97CAC  38 60 00 01 */	li r3, 1
/* 80C97CB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C97CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C97CB8  7C 08 03 A6 */	mtlr r0
/* 80C97CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C97CC0  4E 80 00 20 */	blr 
