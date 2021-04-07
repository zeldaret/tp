lbl_80033030:
/* 80033030  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033034  7C 08 02 A6 */	mflr r0
/* 80033038  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003303C  39 61 00 20 */	addi r11, r1, 0x20
/* 80033040  48 32 F1 91 */	bl _savegpr_26
/* 80033044  7C 7A 1B 78 */	mr r26, r3
/* 80033048  7C 9B 23 78 */	mr r27, r4
/* 8003304C  2C 1B 00 18 */	cmpwi r27, 0x18
/* 80033050  40 80 02 8C */	bge lbl_800332DC
/* 80033054  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80033058  41 82 02 7C */	beq lbl_800332D4
/* 8003305C  3B C0 00 00 */	li r30, 0
/* 80033060  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80033064  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80033068:
/* 80033068  7F E3 FB 78 */	mr r3, r31
/* 8003306C  7F C4 F3 78 */	mr r4, r30
/* 80033070  4B FF F9 ED */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 80033074  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80033078  7C 1B 00 00 */	cmpw r27, r0
/* 8003307C  41 82 00 18 */	beq lbl_80033094
/* 80033080  7F C3 F3 78 */	mr r3, r30
/* 80033084  4B FF AD 45 */	bl dComIfGs_getMixItemIndex__Fi
/* 80033088  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8003308C  7C 1B 00 00 */	cmpw r27, r0
/* 80033090  40 82 02 38 */	bne lbl_800332C8
lbl_80033094:
/* 80033094  7F C3 F3 78 */	mr r3, r30
/* 80033098  4B FF AD 31 */	bl dComIfGs_getMixItemIndex__Fi
/* 8003309C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800330A0  28 00 00 FF */	cmplwi r0, 0xff
/* 800330A4  41 82 02 24 */	beq lbl_800332C8
/* 800330A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800330AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800330B0  7F C4 F3 78 */	mr r4, r30
/* 800330B4  4B FF F9 A9 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 800330B8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800330BC  7F BA 00 AE */	lbzx r29, r26, r0
/* 800330C0  7F C3 F3 78 */	mr r3, r30
/* 800330C4  4B FF AD 05 */	bl dComIfGs_getMixItemIndex__Fi
/* 800330C8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800330CC  7C 7A 00 AE */	lbzx r3, r26, r0
/* 800330D0  7C 7C 1B 78 */	mr r28, r3
/* 800330D4  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800330D8  28 00 00 43 */	cmplwi r0, 0x43
/* 800330DC  40 82 00 10 */	bne lbl_800330EC
/* 800330E0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800330E4  28 00 00 70 */	cmplwi r0, 0x70
/* 800330E8  41 82 00 1C */	beq lbl_80033104
lbl_800330EC:
/* 800330EC  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 800330F0  28 00 00 43 */	cmplwi r0, 0x43
/* 800330F4  40 82 00 18 */	bne lbl_8003310C
/* 800330F8  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800330FC  28 00 00 70 */	cmplwi r0, 0x70
/* 80033100  40 82 00 0C */	bne lbl_8003310C
lbl_80033104:
/* 80033104  38 60 00 59 */	li r3, 0x59
/* 80033108  48 00 01 D8 */	b lbl_800332E0
lbl_8003310C:
/* 8003310C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80033110  28 00 00 43 */	cmplwi r0, 0x43
/* 80033114  40 82 00 10 */	bne lbl_80033124
/* 80033118  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8003311C  28 00 00 71 */	cmplwi r0, 0x71
/* 80033120  41 82 00 1C */	beq lbl_8003313C
lbl_80033124:
/* 80033124  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80033128  28 00 00 43 */	cmplwi r0, 0x43
/* 8003312C  40 82 00 18 */	bne lbl_80033144
/* 80033130  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80033134  28 00 00 71 */	cmplwi r0, 0x71
/* 80033138  40 82 00 0C */	bne lbl_80033144
lbl_8003313C:
/* 8003313C  38 60 00 59 */	li r3, 0x59
/* 80033140  48 00 01 A0 */	b lbl_800332E0
lbl_80033144:
/* 80033144  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80033148  28 00 00 43 */	cmplwi r0, 0x43
/* 8003314C  40 82 00 10 */	bne lbl_8003315C
/* 80033150  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80033154  28 00 00 72 */	cmplwi r0, 0x72
/* 80033158  41 82 00 1C */	beq lbl_80033174
lbl_8003315C:
/* 8003315C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80033160  28 00 00 43 */	cmplwi r0, 0x43
/* 80033164  40 82 00 18 */	bne lbl_8003317C
/* 80033168  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8003316C  28 00 00 72 */	cmplwi r0, 0x72
/* 80033170  40 82 00 0C */	bne lbl_8003317C
lbl_80033174:
/* 80033174  38 60 00 59 */	li r3, 0x59
/* 80033178  48 00 01 68 */	b lbl_800332E0
lbl_8003317C:
/* 8003317C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80033180  28 00 00 43 */	cmplwi r0, 0x43
/* 80033184  40 82 00 10 */	bne lbl_80033194
/* 80033188  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8003318C  28 00 00 3E */	cmplwi r0, 0x3e
/* 80033190  41 82 00 1C */	beq lbl_800331AC
lbl_80033194:
/* 80033194  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80033198  28 00 00 43 */	cmplwi r0, 0x43
/* 8003319C  40 82 00 18 */	bne lbl_800331B4
/* 800331A0  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800331A4  28 00 00 3E */	cmplwi r0, 0x3e
/* 800331A8  40 82 00 0C */	bne lbl_800331B4
lbl_800331AC:
/* 800331AC  38 60 00 5A */	li r3, 0x5a
/* 800331B0  48 00 01 30 */	b lbl_800332E0
lbl_800331B4:
/* 800331B4  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800331B8  28 00 00 4A */	cmplwi r0, 0x4a
/* 800331BC  40 82 00 10 */	bne lbl_800331CC
/* 800331C0  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 800331C4  28 00 00 76 */	cmplwi r0, 0x76
/* 800331C8  41 82 00 1C */	beq lbl_800331E4
lbl_800331CC:
/* 800331CC  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 800331D0  28 00 00 4A */	cmplwi r0, 0x4a
/* 800331D4  40 82 00 18 */	bne lbl_800331EC
/* 800331D8  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800331DC  28 00 00 76 */	cmplwi r0, 0x76
/* 800331E0  40 82 00 0C */	bne lbl_800331EC
lbl_800331E4:
/* 800331E4  38 60 00 5B */	li r3, 0x5b
/* 800331E8  48 00 00 F8 */	b lbl_800332E0
lbl_800331EC:
/* 800331EC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800331F0  28 00 00 4A */	cmplwi r0, 0x4a
/* 800331F4  40 82 00 10 */	bne lbl_80033204
/* 800331F8  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 800331FC  28 00 00 3D */	cmplwi r0, 0x3d
/* 80033200  41 82 00 1C */	beq lbl_8003321C
lbl_80033204:
/* 80033204  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80033208  28 00 00 4A */	cmplwi r0, 0x4a
/* 8003320C  40 82 00 18 */	bne lbl_80033224
/* 80033210  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80033214  28 00 00 3D */	cmplwi r0, 0x3d
/* 80033218  40 82 00 0C */	bne lbl_80033224
lbl_8003321C:
/* 8003321C  38 60 00 5C */	li r3, 0x5c
/* 80033220  48 00 00 C0 */	b lbl_800332E0
lbl_80033224:
/* 80033224  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80033228  28 00 00 4A */	cmplwi r0, 0x4a
/* 8003322C  40 82 00 10 */	bne lbl_8003323C
/* 80033230  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80033234  28 00 00 74 */	cmplwi r0, 0x74
/* 80033238  41 82 00 1C */	beq lbl_80033254
lbl_8003323C:
/* 8003323C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80033240  28 00 00 4A */	cmplwi r0, 0x4a
/* 80033244  40 82 00 18 */	bne lbl_8003325C
/* 80033248  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8003324C  28 00 00 74 */	cmplwi r0, 0x74
/* 80033250  40 82 00 0C */	bne lbl_8003325C
lbl_80033254:
/* 80033254  38 60 00 5D */	li r3, 0x5d
/* 80033258  48 00 00 88 */	b lbl_800332E0
lbl_8003325C:
/* 8003325C  2C 1E 00 03 */	cmpwi r30, 3
/* 80033260  40 82 00 4C */	bne lbl_800332AC
/* 80033264  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80033268  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8003326C  7F C4 F3 78 */	mr r4, r30
/* 80033270  4B FF F7 ED */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 80033274  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80033278  40 82 00 34 */	bne lbl_800332AC
/* 8003327C  7F C3 F3 78 */	mr r3, r30
/* 80033280  4B FF AB 49 */	bl dComIfGs_getMixItemIndex__Fi
/* 80033284  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80033288  40 82 00 24 */	bne lbl_800332AC
/* 8003328C  7F C3 F3 78 */	mr r3, r30
/* 80033290  38 80 00 FF */	li r4, 0xff
/* 80033294  4B FF AA 31 */	bl dComIfGs_setSelectItemIndex__FiUc
/* 80033298  7F C3 F3 78 */	mr r3, r30
/* 8003329C  38 80 00 FF */	li r4, 0xff
/* 800332A0  4B FF AA 69 */	bl dComIfGs_setMixItemIndex__FiUc
/* 800332A4  38 60 00 FF */	li r3, 0xff
/* 800332A8  48 00 00 38 */	b lbl_800332E0
lbl_800332AC:
/* 800332AC  3C 60 80 38 */	lis r3, d_save_d_save__stringBase0@ha /* 0x80379234@ha */
/* 800332B0  38 63 92 34 */	addi r3, r3, d_save_d_save__stringBase0@l /* 0x80379234@l */
/* 800332B4  38 63 00 09 */	addi r3, r3, 9
/* 800332B8  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 800332BC  57 85 06 3E */	clrlwi r5, r28, 0x18
/* 800332C0  4C C6 31 82 */	crclr 6
/* 800332C4  4B FD 39 49 */	bl OSReport_Error
lbl_800332C8:
/* 800332C8  3B DE 00 01 */	addi r30, r30, 1
/* 800332CC  2C 1E 00 02 */	cmpwi r30, 2
/* 800332D0  41 80 FD 98 */	blt lbl_80033068
lbl_800332D4:
/* 800332D4  7C 7A D8 AE */	lbzx r3, r26, r27
/* 800332D8  48 00 00 08 */	b lbl_800332E0
lbl_800332DC:
/* 800332DC  38 60 00 FF */	li r3, 0xff
lbl_800332E0:
/* 800332E0  39 61 00 20 */	addi r11, r1, 0x20
/* 800332E4  48 32 EF 39 */	bl _restgpr_26
/* 800332E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800332EC  7C 08 03 A6 */	mtlr r0
/* 800332F0  38 21 00 20 */	addi r1, r1, 0x20
/* 800332F4  4E 80 00 20 */	blr 
