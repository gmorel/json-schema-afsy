<?php

namespace Gmorel\Bundle\GithubBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;

class RepoController extends Controller
{
    /**
     * Stable data for our example
     * @see https://api.github.com/users/rezzza/repos\?visibility=public
     * @param string $organization
     *
     * @return JsonResponse
     */
    public function indexAction($organization, Request $request)
    {
        switch($request->get('sort', 'full_name'))
        {
            case 'full_name':
                $fileName = 'rezzza_repo.full_name_sorted.json';
                break;
            case 'created':
                $fileName = 'rezzza_repo.created_sorted.json';
                break;
            case 'updated':
                $fileName = 'rezzza_repo.updated_sorted.json';
                break;
            case 'pushed':
                $fileName = 'rezzza_repo.pushed_sorted.json';
                break;
        }
        return new JsonResponse(
            json_decode(
                file_get_contents(__DIR__ . '/../Resources/payload/' . $fileName),
                true
            )
        );
    }
}
