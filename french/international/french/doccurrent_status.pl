#!/usr/bin/perl

do 'documents-bd.pl';

# This file should modify the %translations database to include
# all information regarding the translation status for a fixed 
# language

#       'key' => {
#               'status'        => '',
#   use numbers instead of text since it makes translations easier
#                      'not-available'                 0
#                      'not translated'                1
#                      'being translated'              2
#                      'needs revision'                3
#                      'translation up to date'        4
#                      'needs check'                   5
#                      'being revised'                 6
#                      'obsolete'                      7
#                      'unknown'                       8
# In french:
#                       'non-disponible'                0
#                       '� traduire'                    1
#                       'en cours de traduction'        2
#                       '� relire'                      3
#                       'traduction � jour'             4
#                       '� r�viser'                     5
#                       'en cours de r�vision'          6
#                       'obsol�te'                      7
#                       'inconnu'                       8
#
#       'since'                 => '',
#       'diff'                  => '',
#       'base_revision'         => '',
#       'translation_name'      => '',
#       'translation_sub_name'  => '',
#       'translation_maintainer'=> [ '', ...],
#       'translation_revision'  => '',
#       'translation_url'       => '',
#       'translation_cvs_url'   => '',
#       'translation_source_url'=> '',
#       'translation_diff_url'  => '',
#       'translation_package'   => '',
#       'last_translated'       => '',
#       'old_translators'       => []


#####################################################################
#
# Livres GPL
#
#####################################################################

$translations_status = {

'book-gtiau' => {
	'status' 		=> 2,
	'since'			=> '13/09/1999',
	'translation_maintainer'=> ['Patrice Karatchentzeff <p.karatchentzeff@free.fr>' ],
	'translation_name'	=> 'Debian GNU/Linux: guide d\'installation et d\'utilisation',
	'translation_dev_url'   => 'http://cvs.debian.org/webwml/french/international/french/translations/debian-guide_fr-1.0.sgml?cvsroot=webwml',
	'old_translators'	=> [	'Martin Quinson <mquinson@zeppelin-cb.de>',
					'Fabien Ninoles <fabien@Nightbird.TZoNE.ORG>'],
},

######################################################################
#
# Debian Documentation Project
#
######################################################################

'policy' => {
	'status'		=> 4,
	'since'			=> '06/08/2001',
	'translation_name'	=> 'La charte Debian',
	'translation_maintainer'=> ['philippe batailler <pbatailler@teaser.fr>'],
	'base_revision'		=> '3.5.6.0',
	'translation_url'	=> 'http://www.teaser.fr/~pbatailler/charte.html/',
	'translation_dev_url'	=> 'http://www.teaser.fr/~pbatailler/',
	'translation_source_url'	=> 'http://cvs.debian.org/webwml/french/international/french/translations/policy.fr.sgml?cvsroot=webwml',
	'old_translators'	=> ['Serge Stinckwich <serge@info.unicaen.fr>'],
},

'project-history' => {
	'status'		=> 3,
	'since'			=> '03/11/2000',
	'base_revision'		=> '1.2',
	'translation_name'	=> 'Histoire du projet Debian',
	'translation_maintainer'=> ['Patrice Karatchentzeff <p.karatchentzeff@free.fr>'],
},

'faq' => {
	'status'		=> 1,
	'since'			=> '28/05/2001',
	'translation_name'	=> 'FAQ Debian GNU/Linux',
	'old_translators'	=> [
				    'Vincent Renardias <vincent@waw.com>',
				    'Philippe Caillaud <phil@penguin.infini.fr>'],
},

'tutorial' => {
	'status'		=> 1,
	'since'			=> '28/05/2001',
	'translation_name'	=> 'Tutorial Debian',
	'old_translators'	=> ['Eric Jacoboni <jaco@titine.fr.eu.org>',
				    'Lo�c Martin <lomartin@dejanews.com>'],
},

'install' => {
	'status'		=> 3,
	'since'			=> '13/03/2000',
	'translation_name'	=> 'Manuel d\'installation de Debian',
	'translation_maintainer'=> ['Christophe Le Bars <clebars@debian.org>'],
	'base_revision'		=> '2.1',
	'translation_url'	=> 'http://www.debian.org/releases/stable/i386/install.fr.html',
	'translation_cvs_url'   => 'http://cvs.debian.org/boot-floppies/documentation/install.fr.sgml?cvsroot=debian-boot',
	'translation_package'	=> 'boot-floppies',
	'last_translated'	=> '16/03/1999'
},

'dselect-beginner' => {
	'status'		=> 3,
	'since'			=> '13/03/2000',
	'translation_name'	=> 'Guide de dselect pour les d�butants',
	'translation_maintainer'=> ['Laurent Picouleau <laurent.picouleau@wanadoo.fr>'],
	'base_revision'		=> '2.1',
	'translation_url'	=> 'http://www.debian.org/releases/stable/i386/dselect-beginner.fr.html',
	'translation_cvs_url'   => 'http://cvs.debian.org/boot-floppies/documentation/dselect-beginner.fr.sgml?cvsroot=debian-boot',
	'translation_package'	=> 'boot-floppies',
	'last_translated'	=> '27/03/1999',
	'note'			=> 'Le responsable est pr�t � passer la main'
},

'release-notes' => {
	'status'		=> 1,
	'since'			=> '28/05/2001',
	'translation_name'	=> 'Notes de publication',
	'old_translators'       => ['mmenal <mmenal@ifrance.com>'],
	'translation_package'	=> 'boot-floppies',
},

'maint-guide' => {
	'status'		=> 4,
	'since'			=> '30/03/2000',
	'translation_name'	=> 'Guide du nouveau responsable Debian',
	'translation_maintainer'=> ['Frederic Dumont <frederic.dumont@freeworld.be>'],
	'translation_url'	=> 'http://www.debian.org/doc/manuals/maint-guide/index.fr.html',
	'translation_cvs_url'   => 'http://cvs.debian.org/ddp/manuals.sgml/maint-guide/maint-guide.fr.sgml?cvsroot=debian-doc',
	'last_translated'	=> '02/07/1998',
},

'programmer' => {
	'status'		=> 7,
	'since'			=> '?',
},
	
'network-administrator' => {
        'status'                => 1,
	'since'			=> '13/03/2000',
},

'system-administrator' => {
        'status'                => 1,
	'since'			=> '13/03/2000',
},

'intro-i18n' => {
        'status'                => 1,
	'since'			=> '13/03/2000',
},


'meta' => {
        'status'                => 4,
	'since'			=> '29/11/2000',
	'translation_maintainer'=> ['Mickael Simon <simon.mickael@wanadoo.fr>'],
},

'packaging-manual' => {
	'status'		=> 3,
	'translation_name'	=> 'Manuel des paquets Debian',
	'since'			=> '01/07/1998',
	'translation_maintainer'=> [
					'David Cure <cure@cnam.fr>', 
					'Christian Jacolot <jacolot@ubolib.univ-brest.fr>',
				],
	'translation_package'	=> '',
},

'developers-reference' => {
	'status'		=> 4,
	'since'			=> '28/05/2001',
	'translation_name'	=> 'Manuel de r�f�rence du d�veloppeur Debian',
	'translation_maintainer'=> ['Antoine Hulin <antoine@origan.fdn.fr>'],
	'base_revision'		=> '',
	'translation_package'	=> 'developers-reference',
	'translation_url'	=> 'http://www.debian.org/doc/manuals/developers-reference/index.fr.html',
	'old_translators'	=> ['Alain Meessen <ameessen@ulb.ac.be>',
	                            'Herve Floch <Herve.Floch@linux.eu.org>',
				    'Laurent Picouleau <laurent.picouleau@wanadoo.fr>'],
},

'internals' => {
	'status'		=> 4,
	'since'			=> 'O8/O1/2001',
	'translation_name'	=> 'Manuel des m�canismes internes de dpkg',
	'translation_maintainer'=> ['Christian Couder <chcouder@mail.club-internet.fr>'],
	'base_revision'		=> '1.5',
},

#'making-deb' => {
#	'status'		=> 4,
#	'since'			=> '25/09/1998',
#	'translation_name'	=> 'Introduction : Cr�er un paquet Debian',
#	'translation_maintainer'=> ['Frederic Dumont <frederic.dumont@gate71.be>'],
#	'last_translated'	=> '01/07/1998',
#},

'sgml-howto' => {
	'status'		=> 2,
	'since'			=> '28/05/2001',
	'translation_name'	=> 'The Debian SGML/XML HOWTO',
	'translation_maintainer'=> ['Philippe Batailler <pbatailler@teaser.fr>'],
	'old_translators'       => ['J�r�me Marant <jerome.marant@free.fr>'],
},

'markup' => {
	'status'		=> 4,
	'since'			=> '',
	'translation_name'	=> 'Manuel de Debiandoc-SGML',
	'translation_sub_name'	=> '',
	'translation_maintainer'=> ['Christophe Le Bars <clebars@debian.org>'],
	'translation_url'       => 'http://www.debian.org/~clebars/f2dp/translations/markup.fr.html/',
	'translation_cvs_url'   => '',
	'translation_package'	=> 'doc-debian-fr',
	'last_translated'	=> '',
},

'libc5-libc6-Mini-HOWTO' => {
	'status'		=> 4,
	'since'			=> '10/08/1998',
	'translation_name'	=> 'libc5-libc6-Mini-HOWTO',
	'translation_sub_name'	=> '',
	'translation_maintainer'=> ['Philippe CAILLAUD <phil@penguin.infini.fr>'],
	'translation_package'	=> '',
	'last_translated'	=> '10/08/1998',
},
};

# Merges the $translation and the $translation_status database
foreach my $key (keys %{ $translations }) {
        print STDERR "(merge_db) Merging key $key\n" if $debug;
        foreach my $current (keys  %{ $translations_status->{$key} } ) {
                print STDERR "(merge_db) Adding information $current into $key\n" if $debug;
                $translations->{$key}->{$current}=$translations_status->{$key}->{$current};
        }
        delete $translations_status->{$key};
}
foreach my $key (keys %{ $translations_status }) {
        print STDERR "(merge_db) Adding key $key\n" if $debug;
        $translations->{$key} = $translations_status->{$key};
}

1;

