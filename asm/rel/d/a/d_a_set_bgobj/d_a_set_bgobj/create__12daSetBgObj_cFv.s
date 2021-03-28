lbl_80485DFC:
/* 80485DFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485E00  7C 08 02 A6 */	mflr r0
/* 80485E04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485E08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80485E0C  7C 7F 1B 78 */	mr r31, r3
/* 80485E10  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80485E14  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80485E18  40 82 00 1C */	bne lbl_80485E34
/* 80485E1C  28 1F 00 00 */	cmplwi r31, 0
/* 80485E20  41 82 00 08 */	beq lbl_80485E28
/* 80485E24  4B B9 2D 40 */	b __ct__10fopAc_ac_cFv
lbl_80485E28:
/* 80485E28  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80485E2C  60 00 00 08 */	ori r0, r0, 8
/* 80485E30  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80485E34:
/* 80485E34  7F E3 FB 78 */	mr r3, r31
/* 80485E38  4B BA BA 38 */	b getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 80485E3C  7C 65 1B 78 */	mr r5, r3
/* 80485E40  38 7F 05 70 */	addi r3, r31, 0x570
/* 80485E44  3C 80 80 48 */	lis r4, stringBase0@ha
/* 80485E48  38 84 5F 0C */	addi r4, r4, stringBase0@l
/* 80485E4C  4C C6 31 82 */	crclr 6
/* 80485E50  4B EE 06 8C */	b sprintf
/* 80485E54  38 7F 05 68 */	addi r3, r31, 0x568
/* 80485E58  38 9F 05 70 */	addi r4, r31, 0x570
/* 80485E5C  4B BA 70 60 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80485E60  2C 03 00 04 */	cmpwi r3, 4
/* 80485E64  40 82 00 10 */	bne lbl_80485E74
/* 80485E68  7F E3 FB 78 */	mr r3, r31
/* 80485E6C  4B FF FF 0D */	bl CreateInit__12daSetBgObj_cFv
/* 80485E70  38 60 00 05 */	li r3, 5
lbl_80485E74:
/* 80485E74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80485E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485E7C  7C 08 03 A6 */	mtlr r0
/* 80485E80  38 21 00 10 */	addi r1, r1, 0x10
/* 80485E84  4E 80 00 20 */	blr 
