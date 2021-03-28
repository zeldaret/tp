lbl_8059D738:
/* 8059D738  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059D73C  7C 08 02 A6 */	mflr r0
/* 8059D740  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059D744  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8059D748  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8059D74C  7C 7F 1B 78 */	mr r31, r3
/* 8059D750  80 63 05 68 */	lwz r3, 0x568(r3)
/* 8059D754  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8059D758  7C 03 00 40 */	cmplw r3, r0
/* 8059D75C  40 82 00 50 */	bne lbl_8059D7AC
/* 8059D760  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8059D764  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8059D768  40 82 00 24 */	bne lbl_8059D78C
/* 8059D76C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8059D770  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8059D774  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8059D778  28 00 00 00 */	cmplwi r0, 0
/* 8059D77C  41 82 00 28 */	beq lbl_8059D7A4
/* 8059D780  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8059D784  28 00 00 01 */	cmplwi r0, 1
/* 8059D788  41 82 00 1C */	beq lbl_8059D7A4
lbl_8059D78C:
/* 8059D78C  80 1F 05 6C */	lwz r0, 0x56c(r31)
/* 8059D790  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8059D794  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8059D798  60 00 00 80 */	ori r0, r0, 0x80
/* 8059D79C  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8059D7A0  48 00 00 0C */	b lbl_8059D7AC
lbl_8059D7A4:
/* 8059D7A4  38 60 00 01 */	li r3, 1
/* 8059D7A8  48 00 01 E0 */	b lbl_8059D988
lbl_8059D7AC:
/* 8059D7AC  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 8059D7B0  4B AE 6C B0 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8059D7B4  28 03 00 00 */	cmplwi r3, 0
/* 8059D7B8  41 82 01 80 */	beq lbl_8059D938
/* 8059D7BC  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8059D7C0  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8059D7C4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8059D7C8  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8059D7CC  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8059D7D0  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8059D7D4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8059D7D8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8059D7DC  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 8059D7E0  54 00 06 7F */	clrlwi. r0, r0, 0x19
/* 8059D7E4  40 82 00 A8 */	bne lbl_8059D88C
/* 8059D7E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8059D7EC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8059D7F0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8059D7F4  38 80 00 00 */	li r4, 0
/* 8059D7F8  90 81 00 08 */	stw r4, 8(r1)
/* 8059D7FC  38 00 FF FF */	li r0, -1
/* 8059D800  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059D804  90 81 00 10 */	stw r4, 0x10(r1)
/* 8059D808  90 81 00 14 */	stw r4, 0x14(r1)
/* 8059D80C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8059D810  38 80 00 00 */	li r4, 0
/* 8059D814  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008347@ha */
/* 8059D818  38 A5 83 47 */	addi r5, r5, 0x8347 /* 0x00008347@l */
/* 8059D81C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8059D820  38 E0 00 00 */	li r7, 0
/* 8059D824  39 00 00 00 */	li r8, 0
/* 8059D828  39 20 00 00 */	li r9, 0
/* 8059D82C  39 40 00 FF */	li r10, 0xff
/* 8059D830  3D 60 80 5A */	lis r11, lit_3778@ha
/* 8059D834  C0 2B DE D8 */	lfs f1, lit_3778@l(r11)
/* 8059D838  4B AA F2 58 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8059D83C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8059D840  38 80 00 00 */	li r4, 0
/* 8059D844  90 81 00 08 */	stw r4, 8(r1)
/* 8059D848  38 00 FF FF */	li r0, -1
/* 8059D84C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059D850  90 81 00 10 */	stw r4, 0x10(r1)
/* 8059D854  90 81 00 14 */	stw r4, 0x14(r1)
/* 8059D858  90 81 00 18 */	stw r4, 0x18(r1)
/* 8059D85C  38 80 00 00 */	li r4, 0
/* 8059D860  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008348@ha */
/* 8059D864  38 A5 83 48 */	addi r5, r5, 0x8348 /* 0x00008348@l */
/* 8059D868  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8059D86C  38 E0 00 00 */	li r7, 0
/* 8059D870  39 00 00 00 */	li r8, 0
/* 8059D874  39 20 00 00 */	li r9, 0
/* 8059D878  39 40 00 FF */	li r10, 0xff
/* 8059D87C  3D 60 80 5A */	lis r11, lit_3778@ha
/* 8059D880  C0 2B DE D8 */	lfs f1, lit_3778@l(r11)
/* 8059D884  4B AA F2 0C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8059D888  48 00 00 F4 */	b lbl_8059D97C
lbl_8059D88C:
/* 8059D88C  2C 00 00 01 */	cmpwi r0, 1
/* 8059D890  40 82 00 EC */	bne lbl_8059D97C
/* 8059D894  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8059D898  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8059D89C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8059D8A0  38 80 00 00 */	li r4, 0
/* 8059D8A4  90 81 00 08 */	stw r4, 8(r1)
/* 8059D8A8  38 00 FF FF */	li r0, -1
/* 8059D8AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059D8B0  90 81 00 10 */	stw r4, 0x10(r1)
/* 8059D8B4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8059D8B8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8059D8BC  38 80 00 00 */	li r4, 0
/* 8059D8C0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008349@ha */
/* 8059D8C4  38 A5 83 49 */	addi r5, r5, 0x8349 /* 0x00008349@l */
/* 8059D8C8  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8059D8CC  38 E0 00 00 */	li r7, 0
/* 8059D8D0  39 00 00 00 */	li r8, 0
/* 8059D8D4  39 20 00 00 */	li r9, 0
/* 8059D8D8  39 40 00 FF */	li r10, 0xff
/* 8059D8DC  3D 60 80 5A */	lis r11, lit_3778@ha
/* 8059D8E0  C0 2B DE D8 */	lfs f1, lit_3778@l(r11)
/* 8059D8E4  4B AA F1 AC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8059D8E8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8059D8EC  38 80 00 00 */	li r4, 0
/* 8059D8F0  90 81 00 08 */	stw r4, 8(r1)
/* 8059D8F4  38 00 FF FF */	li r0, -1
/* 8059D8F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059D8FC  90 81 00 10 */	stw r4, 0x10(r1)
/* 8059D900  90 81 00 14 */	stw r4, 0x14(r1)
/* 8059D904  90 81 00 18 */	stw r4, 0x18(r1)
/* 8059D908  38 80 00 00 */	li r4, 0
/* 8059D90C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000834A@ha */
/* 8059D910  38 A5 83 4A */	addi r5, r5, 0x834A /* 0x0000834A@l */
/* 8059D914  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8059D918  38 E0 00 00 */	li r7, 0
/* 8059D91C  39 00 00 00 */	li r8, 0
/* 8059D920  39 20 00 00 */	li r9, 0
/* 8059D924  39 40 00 FF */	li r10, 0xff
/* 8059D928  3D 60 80 5A */	lis r11, lit_3778@ha
/* 8059D92C  C0 2B DE D8 */	lfs f1, lit_3778@l(r11)
/* 8059D930  4B AA F1 60 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8059D934  48 00 00 48 */	b lbl_8059D97C
lbl_8059D938:
/* 8059D938  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8059D93C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8059D940  41 82 00 10 */	beq lbl_8059D950
/* 8059D944  7F E3 FB 78 */	mr r3, r31
/* 8059D948  38 80 00 02 */	li r4, 2
/* 8059D94C  4B FF F0 AD */	bl setAction__15daObjYobikusa_cFQ215daObjYobikusa_c6Mode_e
lbl_8059D950:
/* 8059D950  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8059D954  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8059D958  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8059D95C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8059D960  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8059D964  38 00 00 2A */	li r0, 0x2a
/* 8059D968  41 82 00 08 */	beq lbl_8059D970
/* 8059D96C  38 00 00 49 */	li r0, 0x49
lbl_8059D970:
/* 8059D970  98 1F 05 48 */	stb r0, 0x548(r31)
/* 8059D974  7F E3 FB 78 */	mr r3, r31
/* 8059D978  4B FF F0 DD */	bl callExecute__15daObjYobikusa_cFv
lbl_8059D97C:
/* 8059D97C  7F E3 FB 78 */	mr r3, r31
/* 8059D980  4B FF FA 01 */	bl setCcCylinder__15daObjYobikusa_cFv
/* 8059D984  38 60 00 01 */	li r3, 1
lbl_8059D988:
/* 8059D988  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8059D98C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8059D990  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059D994  7C 08 03 A6 */	mtlr r0
/* 8059D998  38 21 00 30 */	addi r1, r1, 0x30
/* 8059D99C  4E 80 00 20 */	blr 
