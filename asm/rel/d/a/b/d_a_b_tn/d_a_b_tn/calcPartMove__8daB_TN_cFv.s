lbl_8062070C:
/* 8062070C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80620710  7C 08 02 A6 */	mflr r0
/* 80620714  90 01 00 44 */	stw r0, 0x44(r1)
/* 80620718  39 61 00 40 */	addi r11, r1, 0x40
/* 8062071C  4B D4 1A A0 */	b _savegpr_21
/* 80620720  7C 7D 1B 78 */	mr r29, r3
/* 80620724  3B C0 00 00 */	li r30, 0
/* 80620728  3B 80 00 00 */	li r28, 0
/* 8062072C  3B 60 00 00 */	li r27, 0
/* 80620730  3B 40 00 00 */	li r26, 0
/* 80620734  3B 20 00 00 */	li r25, 0
/* 80620738  3B 00 00 00 */	li r24, 0
/* 8062073C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80620740  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80620744  3A C3 0F 38 */	addi r22, r3, 0xf38
lbl_80620748:
/* 80620748  7F FD C2 14 */	add r31, r29, r24
/* 8062074C  A0 7F 0A 1C */	lhz r3, 0xa1c(r31)
/* 80620750  28 03 00 00 */	cmplwi r3, 0
/* 80620754  41 82 00 0C */	beq lbl_80620760
/* 80620758  38 03 FF FF */	addi r0, r3, -1
/* 8062075C  B0 1F 0A 1C */	sth r0, 0xa1c(r31)
lbl_80620760:
/* 80620760  7E FD CA 14 */	add r23, r29, r25
/* 80620764  C0 17 07 5C */	lfs f0, 0x75c(r23)
/* 80620768  D0 17 08 1C */	stfs f0, 0x81c(r23)
/* 8062076C  C0 17 07 60 */	lfs f0, 0x760(r23)
/* 80620770  D0 17 08 20 */	stfs f0, 0x820(r23)
/* 80620774  C0 17 07 64 */	lfs f0, 0x764(r23)
/* 80620778  D0 17 08 24 */	stfs f0, 0x824(r23)
/* 8062077C  2C 1E 00 0C */	cmpwi r30, 0xc
/* 80620780  40 82 00 10 */	bne lbl_80620790
/* 80620784  7F A3 EB 78 */	mr r3, r29
/* 80620788  4B FF ED 99 */	bl calcShieldMove__8daB_TN_cFv
/* 8062078C  48 00 00 38 */	b lbl_806207C4
lbl_80620790:
/* 80620790  2C 1E 00 0D */	cmpwi r30, 0xd
/* 80620794  40 82 00 10 */	bne lbl_806207A4
/* 80620798  7F A3 EB 78 */	mr r3, r29
/* 8062079C  4B FF F2 59 */	bl calcSwordMoveA__8daB_TN_cFv
/* 806207A0  48 00 00 24 */	b lbl_806207C4
lbl_806207A4:
/* 806207A4  2C 1E 00 0F */	cmpwi r30, 0xf
/* 806207A8  40 82 00 10 */	bne lbl_806207B8
/* 806207AC  7F A3 EB 78 */	mr r3, r29
/* 806207B0  4B FF F5 CD */	bl calcSwordMoveB__8daB_TN_cFv
/* 806207B4  48 00 00 10 */	b lbl_806207C4
lbl_806207B8:
/* 806207B8  7F A3 EB 78 */	mr r3, r29
/* 806207BC  7F C4 F3 78 */	mr r4, r30
/* 806207C0  4B FF F8 21 */	bl calcOtherPartMove__8daB_TN_cFi
lbl_806207C4:
/* 806207C4  38 9A 3E DC */	addi r4, r26, 0x3edc
/* 806207C8  7C 9D 22 14 */	add r4, r29, r4
/* 806207CC  3A B7 07 5C */	addi r21, r23, 0x75c
/* 806207D0  7E A3 AB 78 */	mr r3, r21
/* 806207D4  7E A5 AB 78 */	mr r5, r21
/* 806207D8  4B D2 68 B8 */	b PSVECAdd
/* 806207DC  A0 1F 09 FC */	lhz r0, 0x9fc(r31)
/* 806207E0  28 00 00 03 */	cmplwi r0, 3
/* 806207E4  41 82 00 14 */	beq lbl_806207F8
/* 806207E8  28 00 00 04 */	cmplwi r0, 4
/* 806207EC  41 82 00 0C */	beq lbl_806207F8
/* 806207F0  28 00 00 05 */	cmplwi r0, 5
/* 806207F4  40 82 00 9C */	bne lbl_80620890
lbl_806207F8:
/* 806207F8  7E A3 AB 78 */	mr r3, r21
/* 806207FC  38 97 08 DC */	addi r4, r23, 0x8dc
/* 80620800  7E A5 AB 78 */	mr r5, r21
/* 80620804  4B D2 68 8C */	b PSVECAdd
/* 80620808  38 7B 10 D0 */	addi r3, r27, 0x10d0
/* 8062080C  7C 7D 1A 14 */	add r3, r29, r3
/* 80620810  7E C4 B3 78 */	mr r4, r22
/* 80620814  4B A5 62 98 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80620818  88 1D 0A A1 */	lbz r0, 0xaa1(r29)
/* 8062081C  28 00 00 00 */	cmplwi r0, 0
/* 80620820  41 82 00 70 */	beq lbl_80620890
/* 80620824  3A BC 42 9C */	addi r21, r28, 0x429c
/* 80620828  7E BD AA 14 */	add r21, r29, r21
/* 8062082C  7E A3 AB 78 */	mr r3, r21
/* 80620830  4B A6 3E 28 */	b ChkCoHit__12dCcD_GObjInfFv
/* 80620834  28 03 00 00 */	cmplwi r3, 0
/* 80620838  41 82 00 58 */	beq lbl_80620890
/* 8062083C  7E A3 AB 78 */	mr r3, r21
/* 80620840  4B A6 3E B0 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 80620844  7C 77 1B 78 */	mr r23, r3
/* 80620848  4B C4 32 00 */	b GetAc__8cCcD_ObjFv
/* 8062084C  7C 03 E8 40 */	cmplw r3, r29
/* 80620850  40 82 00 2C */	bne lbl_8062087C
/* 80620854  88 17 00 14 */	lbz r0, 0x14(r23)
/* 80620858  28 00 00 00 */	cmplwi r0, 0
/* 8062085C  41 82 00 20 */	beq lbl_8062087C
/* 80620860  A0 1F 0A 1C */	lhz r0, 0xa1c(r31)
/* 80620864  28 00 00 00 */	cmplwi r0, 0
/* 80620868  40 82 00 14 */	bne lbl_8062087C
/* 8062086C  38 00 00 06 */	li r0, 6
/* 80620870  B0 1F 09 FC */	sth r0, 0x9fc(r31)
/* 80620874  38 00 00 1E */	li r0, 0x1e
/* 80620878  B0 1F 0A 1C */	sth r0, 0xa1c(r31)
lbl_8062087C:
/* 8062087C  7E A3 AB 78 */	mr r3, r21
/* 80620880  81 95 00 3C */	lwz r12, 0x3c(r21)
/* 80620884  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80620888  7D 89 03 A6 */	mtctr r12
/* 8062088C  4E 80 04 21 */	bctrl 
lbl_80620890:
/* 80620890  3B DE 00 01 */	addi r30, r30, 1
/* 80620894  2C 1E 00 10 */	cmpwi r30, 0x10
/* 80620898  3B 9C 01 38 */	addi r28, r28, 0x138
/* 8062089C  3B 7B 01 D8 */	addi r27, r27, 0x1d8
/* 806208A0  3B 5A 00 3C */	addi r26, r26, 0x3c
/* 806208A4  3B 39 00 0C */	addi r25, r25, 0xc
/* 806208A8  3B 18 00 02 */	addi r24, r24, 2
/* 806208AC  41 80 FE 9C */	blt lbl_80620748
/* 806208B0  39 61 00 40 */	addi r11, r1, 0x40
/* 806208B4  4B D4 19 54 */	b _restgpr_21
/* 806208B8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806208BC  7C 08 03 A6 */	mtlr r0
/* 806208C0  38 21 00 40 */	addi r1, r1, 0x40
/* 806208C4  4E 80 00 20 */	blr 
