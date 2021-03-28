lbl_80B4FE78:
/* 80B4FE78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B4FE7C  7C 08 02 A6 */	mflr r0
/* 80B4FE80  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B4FE84  39 61 00 40 */	addi r11, r1, 0x40
/* 80B4FE88  4B 81 23 44 */	b _savegpr_25
/* 80B4FE8C  7C 7B 1B 78 */	mr r27, r3
/* 80B4FE90  7C 99 23 78 */	mr r25, r4
/* 80B4FE94  3B E0 00 00 */	li r31, 0
/* 80B4FE98  3B C0 FF FF */	li r30, -1
/* 80B4FE9C  3B A0 00 00 */	li r29, 0
/* 80B4FEA0  3B 80 00 00 */	li r28, 0
/* 80B4FEA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B4FEA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B4FEAC  3B 43 4F F8 */	addi r26, r3, 0x4ff8
/* 80B4FEB0  7F 43 D3 78 */	mr r3, r26
/* 80B4FEB4  3C A0 80 B5 */	lis r5, struct_80B52408+0x0@ha
/* 80B4FEB8  38 A5 24 08 */	addi r5, r5, struct_80B52408+0x0@l
/* 80B4FEBC  38 A5 00 AA */	addi r5, r5, 0xaa
/* 80B4FEC0  38 C0 00 03 */	li r6, 3
/* 80B4FEC4  4B 4F 82 28 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B4FEC8  28 03 00 00 */	cmplwi r3, 0
/* 80B4FECC  41 82 00 08 */	beq lbl_80B4FED4
/* 80B4FED0  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80B4FED4:
/* 80B4FED4  7F 43 D3 78 */	mr r3, r26
/* 80B4FED8  7F 24 CB 78 */	mr r4, r25
/* 80B4FEDC  3C A0 80 B5 */	lis r5, struct_80B52408+0x0@ha
/* 80B4FEE0  38 A5 24 08 */	addi r5, r5, struct_80B52408+0x0@l
/* 80B4FEE4  38 A5 00 AE */	addi r5, r5, 0xae
/* 80B4FEE8  38 C0 00 03 */	li r6, 3
/* 80B4FEEC  4B 4F 82 00 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B4FEF0  28 03 00 00 */	cmplwi r3, 0
/* 80B4FEF4  41 82 00 08 */	beq lbl_80B4FEFC
/* 80B4FEF8  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B4FEFC:
/* 80B4FEFC  7F 43 D3 78 */	mr r3, r26
/* 80B4FF00  7F 24 CB 78 */	mr r4, r25
/* 80B4FF04  3C A0 80 B5 */	lis r5, struct_80B52408+0x0@ha
/* 80B4FF08  38 A5 24 08 */	addi r5, r5, struct_80B52408+0x0@l
/* 80B4FF0C  38 A5 00 C1 */	addi r5, r5, 0xc1
/* 80B4FF10  38 C0 00 03 */	li r6, 3
/* 80B4FF14  4B 4F 81 D8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B4FF18  28 03 00 00 */	cmplwi r3, 0
/* 80B4FF1C  41 82 00 08 */	beq lbl_80B4FF24
/* 80B4FF20  83 83 00 00 */	lwz r28, 0(r3)
lbl_80B4FF24:
/* 80B4FF24  7F 43 D3 78 */	mr r3, r26
/* 80B4FF28  7F 24 CB 78 */	mr r4, r25
/* 80B4FF2C  4B 4F 7E 20 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B4FF30  2C 03 00 00 */	cmpwi r3, 0
/* 80B4FF34  41 82 00 64 */	beq lbl_80B4FF98
/* 80B4FF38  2C 1E 00 01 */	cmpwi r30, 1
/* 80B4FF3C  41 82 00 10 */	beq lbl_80B4FF4C
/* 80B4FF40  40 80 00 58 */	bge lbl_80B4FF98
/* 80B4FF44  48 00 00 54 */	b lbl_80B4FF98
/* 80B4FF48  48 00 00 50 */	b lbl_80B4FF98
lbl_80B4FF4C:
/* 80B4FF4C  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B4FF50  2C 00 00 01 */	cmpwi r0, 1
/* 80B4FF54  41 82 00 2C */	beq lbl_80B4FF80
/* 80B4FF58  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B4FF5C  4B 5F 57 A0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B4FF60  38 00 00 00 */	li r0, 0
/* 80B4FF64  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80B4FF68  3C 60 80 B5 */	lis r3, lit_4330@ha
/* 80B4FF6C  C0 03 23 7C */	lfs f0, lit_4330@l(r3)
/* 80B4FF70  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80B4FF74  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B4FF78  38 00 00 01 */	li r0, 1
/* 80B4FF7C  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80B4FF80:
/* 80B4FF80  38 00 00 00 */	li r0, 0
/* 80B4FF84  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B4FF88  7F 63 DB 78 */	mr r3, r27
/* 80B4FF8C  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 80B4FF90  38 A0 00 00 */	li r5, 0
/* 80B4FF94  4B 5F BC 5C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80B4FF98:
/* 80B4FF98  3C 60 80 B5 */	lis r3, lit_5534@ha
/* 80B4FF9C  38 83 23 FC */	addi r4, r3, lit_5534@l
/* 80B4FFA0  80 64 00 00 */	lwz r3, 0(r4)
/* 80B4FFA4  80 04 00 04 */	lwz r0, 4(r4)
/* 80B4FFA8  90 61 00 08 */	stw r3, 8(r1)
/* 80B4FFAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B4FFB0  80 04 00 08 */	lwz r0, 8(r4)
/* 80B4FFB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B4FFB8  2C 1E 00 01 */	cmpwi r30, 1
/* 80B4FFBC  41 82 00 28 */	beq lbl_80B4FFE4
/* 80B4FFC0  40 80 00 10 */	bge lbl_80B4FFD0
/* 80B4FFC4  2C 1E 00 00 */	cmpwi r30, 0
/* 80B4FFC8  40 80 00 14 */	bge lbl_80B4FFDC
/* 80B4FFCC  48 00 00 9C */	b lbl_80B50068
lbl_80B4FFD0:
/* 80B4FFD0  2C 1E 00 03 */	cmpwi r30, 3
/* 80B4FFD4  40 80 00 94 */	bge lbl_80B50068
/* 80B4FFD8  48 00 00 60 */	b lbl_80B50038
lbl_80B4FFDC:
/* 80B4FFDC  3B E0 00 01 */	li r31, 1
/* 80B4FFE0  48 00 00 88 */	b lbl_80B50068
lbl_80B4FFE4:
/* 80B4FFE4  93 A1 00 08 */	stw r29, 8(r1)
/* 80B4FFE8  93 81 00 0C */	stw r28, 0xc(r1)
/* 80B4FFEC  7F 63 DB 78 */	mr r3, r27
/* 80B4FFF0  38 81 00 08 */	addi r4, r1, 8
/* 80B4FFF4  38 A0 00 00 */	li r5, 0
/* 80B4FFF8  38 C0 00 00 */	li r6, 0
/* 80B4FFFC  38 E0 00 00 */	li r7, 0
/* 80B50000  4B 5F BC 78 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B50004  2C 03 00 00 */	cmpwi r3, 0
/* 80B50008  41 82 00 60 */	beq lbl_80B50068
/* 80B5000C  2C 1D 00 00 */	cmpwi r29, 0
/* 80B50010  41 82 00 0C */	beq lbl_80B5001C
/* 80B50014  2C 1C 00 00 */	cmpwi r28, 0
/* 80B50018  40 82 00 18 */	bne lbl_80B50030
lbl_80B5001C:
/* 80B5001C  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 80B50020  28 00 00 01 */	cmplwi r0, 1
/* 80B50024  40 82 00 44 */	bne lbl_80B50068
/* 80B50028  3B E0 00 01 */	li r31, 1
/* 80B5002C  48 00 00 3C */	b lbl_80B50068
lbl_80B50030:
/* 80B50030  3B E0 00 01 */	li r31, 1
/* 80B50034  48 00 00 34 */	b lbl_80B50068
lbl_80B50038:
/* 80B50038  7F 63 DB 78 */	mr r3, r27
/* 80B5003C  38 80 00 00 */	li r4, 0
/* 80B50040  38 A0 00 00 */	li r5, 0
/* 80B50044  38 C0 00 00 */	li r6, 0
/* 80B50048  38 E0 00 00 */	li r7, 0
/* 80B5004C  4B 5F BC 2C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B50050  2C 03 00 00 */	cmpwi r3, 0
/* 80B50054  41 82 00 14 */	beq lbl_80B50068
/* 80B50058  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 80B5005C  28 00 00 01 */	cmplwi r0, 1
/* 80B50060  40 82 00 08 */	bne lbl_80B50068
/* 80B50064  3B E0 00 01 */	li r31, 1
lbl_80B50068:
/* 80B50068  7F E3 FB 78 */	mr r3, r31
/* 80B5006C  39 61 00 40 */	addi r11, r1, 0x40
/* 80B50070  4B 81 21 A8 */	b _restgpr_25
/* 80B50074  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B50078  7C 08 03 A6 */	mtlr r0
/* 80B5007C  38 21 00 40 */	addi r1, r1, 0x40
/* 80B50080  4E 80 00 20 */	blr 
