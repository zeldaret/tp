lbl_80D50850:
/* 80D50850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D50854  7C 08 02 A6 */	mflr r0
/* 80D50858  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5085C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D50860  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D50864  41 82 00 84 */	beq lbl_80D508E8
/* 80D50868  38 7F 05 78 */	addi r3, r31, 0x578
/* 80D5086C  4B 51 79 69 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D50870  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D50874  41 82 00 18 */	beq lbl_80D5088C
/* 80D50878  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5087C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D50880  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D50884  38 9F 05 78 */	addi r4, r31, 0x578
/* 80D50888  4B 32 39 C9 */	bl Release__4cBgSFP9dBgW_Base
lbl_80D5088C:
/* 80D5088C  38 7F 06 38 */	addi r3, r31, 0x638
/* 80D50890  4B 51 79 45 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D50894  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D50898  41 82 00 18 */	beq lbl_80D508B0
/* 80D5089C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D508A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D508A4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D508A8  38 9F 06 38 */	addi r4, r31, 0x638
/* 80D508AC  4B 32 39 A5 */	bl Release__4cBgSFP9dBgW_Base
lbl_80D508B0:
/* 80D508B0  38 7F 07 58 */	addi r3, r31, 0x758
/* 80D508B4  3C 80 80 D5 */	lis r4, l_arcName@ha /* 0x80D509C8@ha */
/* 80D508B8  38 84 09 C8 */	addi r4, r4, l_arcName@l /* 0x80D509C8@l */
/* 80D508BC  80 84 00 00 */	lwz r4, 0(r4)
/* 80D508C0  4B 2D C7 49 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D508C4  38 7F 05 78 */	addi r3, r31, 0x578
/* 80D508C8  3C 80 80 D5 */	lis r4, __dt__4dBgWFv@ha /* 0x80D4FE5C@ha */
/* 80D508CC  38 84 FE 5C */	addi r4, r4, __dt__4dBgWFv@l /* 0x80D4FE5C@l */
/* 80D508D0  38 A0 00 C0 */	li r5, 0xc0
/* 80D508D4  38 C0 00 02 */	li r6, 2
/* 80D508D8  4B 61 14 11 */	bl __destroy_arr
/* 80D508DC  7F E3 FB 78 */	mr r3, r31
/* 80D508E0  38 80 00 00 */	li r4, 0
/* 80D508E4  4B 2C 83 A9 */	bl __dt__10fopAc_ac_cFv
lbl_80D508E8:
/* 80D508E8  38 60 00 01 */	li r3, 1
/* 80D508EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D508F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D508F4  7C 08 03 A6 */	mtlr r0
/* 80D508F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D508FC  4E 80 00 20 */	blr 
